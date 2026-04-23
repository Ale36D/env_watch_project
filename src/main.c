/**
 * @file main.c
 * @brief SiFli BLE Central + LVGL 智能育苗监控
 *
 * 核心流程: 上电 → 扫描 ESP32 → 连接 → 搜 Service → 订阅 Notify → 收数据 → 刷新 UI
 * 双线程: BLE 线程(阻塞等邮箱) + LVGL 线程(循环刷屏)
 */

#include <rtthread.h>
#include <rtdevice.h>
#include <board.h>
#include <string.h>

#include "button.h"

#include "bf0_hal.h"
#include "drv_io.h"
#include "littlevgl2rtt.h"
#include "lv_ex_data.h"

#include "bf0_ble_gap.h"
#include "bf0_sibles.h"
#include "bf0_sibles_internal.h"
/* #include "bf0_sibles_advertising.h" */ /* 未使用: 本机不做广播 */
#include "ble_connection_manager.h"

#include "app_entry.h"
#include "app_ui.h"

#include "battery_calculator.h"

#define LOG_TAG "ble_app"
#include "log.h"

/* ===================== 配置 ===================== */
#define BLE_APP_MAX_CONN_COUNT 4
#define APP_MAX_DESC 2
#define BLE_THREAD_STACK 4096
#define BLE_THREAD_PRIO 18
#define BATTERY_THREAD_STACK 4096
#define BATTERY_THREAD_PRIO 20
#define LVGL_THREAD_STACK 8192
#define LVGL_THREAD_PRIO 20
#define LVGL_TICK_MS 5 /* LVGL 刷新间隔, 越小帧率越高 */

#define ESP32_DEVICE_NAME "ESP_BLE_SENSOR"

/* ESP32 Service UUID 小端序 */
static const uint8_t g_esp32_svc_uuid[16] = {
    0xdb, 0x8a, 0x7d, 0x4f, 0xcc, 0x50, 0x08, 0x9d,
    0x0a, 0x47, 0x01, 0x3b, 0x80, 0x1d, 0x00, 0x76};

/*
 * ===================== 本地 GATT Server =====================
 * 当前只做 Central (主动连接 ESP32), 本地 Server 保留但未被使用。
 * 如果不需要其他设备连接 SiFli, 可以整段删除以节省 RAM。
 */
enum ble_app_att_list
{
    BLE_APP_SVC,
    BLE_APP_CHAR,
    BLE_APP_CHAR_VALUE,
    BLE_APP_CLIENT_CHAR_CONFIG_DESCRIPTOR,
    BLE_APP_ATT_NB
};

#define app_svc_uuid {0x73, 0x69, 0x66, 0x6c, 0x69, 0x5f, 0x61, 0x70, \
                      0x70, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00}
#define app_chara_uuid {0x73, 0x69, 0x66, 0x6c, 0x69, 0x5f, 0x61, 0x70, \
                        0x70, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00}
#define SERIAL_UUID_16(x) {((uint8_t)(x & 0xff)), ((uint8_t)(x >> 8))}

static uint8_t g_app_svc[ATT_UUID_128_LEN] = app_svc_uuid;

struct attm_desc_128 app_att_db[] = {
    [BLE_APP_SVC] = {SERIAL_UUID_16(ATT_DECL_PRIMARY_SERVICE), PERM(RD, ENABLE), 0, 0},
    [BLE_APP_CHAR] = {SERIAL_UUID_16(ATT_DECL_CHARACTERISTIC), PERM(RD, ENABLE), 0, 0},
    [BLE_APP_CHAR_VALUE] = {
        app_chara_uuid,
        PERM(RD, ENABLE) | PERM(WRITE_REQ, ENABLE) |
            PERM(WRITE_COMMAND, ENABLE) | PERM(NTF, ENABLE) | PERM(WP, NO_AUTH),
        PERM(UUID_LEN, UUID_128) | PERM(RI, ENABLE), 512},
    [BLE_APP_CLIENT_CHAR_CONFIG_DESCRIPTOR] = {SERIAL_UUID_16(ATT_DESC_CLIENT_CHAR_CFG), PERM(RD, ENABLE) | PERM(WRITE_REQ, ENABLE) | PERM(WP, NO_AUTH), PERM(RI, ENABLE), 2},
};

/* ===================== 运行环境 ===================== */
typedef struct
{
    uint8_t is_power_on;
    uint8_t conn_count;
    uint8_t esp32_found;
    uint8_t esp32_connected;
    uint8_t esp32_dev_idx;

    ble_gap_connection_create_param_t last_init_conn;

    struct
    {
        uint8_t conn_idx;
        uint8_t role;
        uint16_t mtu;
        bd_addr_t peer_addr;
        struct
        {
            uint32_t data;
            uint8_t is_config_on;
        } data;
        sibles_svc_remote_svc_t svc;
        uint16_t rmt_svc_hdl;
    } conn[BLE_APP_MAX_CONN_COUNT];

    sibles_hdl srv_handle;
    rt_mailbox_t mb_handle;
} app_env_t;

static app_env_t g_app_env;

static app_env_t *ble_app_get_env(void) { return &g_app_env; }

static uint8_t ble_app_get_dev_by_idx(app_env_t *env, uint8_t conn_idx)
{
    for (uint32_t i = 0; i < BLE_APP_MAX_CONN_COUNT; i++)
        if (env->conn[i].conn_idx == conn_idx)
            return (uint8_t)i;
    return 0xFF;
}

/* 前向声明 */
static void ble_app_start_scan(void);
static void ble_app_service_init(void);
static volatile bool g_screen_on = true;
static void battery_get_value_thread_entry(void *p);
/* ===================== LVGL 线程 ===================== */
static void lvgl_thread_entry(void *p)
{
    (void)p;
    if (littlevgl2rtt_init("lcd") != RT_EOK)
    {
        LOG_E("LVGL init failed");
        return;
    }
    lv_ex_data_pool_init();
    app_lvgl_init();

    rt_thread_t t3 = rt_thread_create("battery", battery_get_value_thread_entry, NULL,
                                      BATTERY_THREAD_STACK, BATTERY_THREAD_PRIO, 10);
    if (t3)
        rt_thread_startup(t3);

    while (1)
    {
        app_lvgl_process();
        if (g_screen_on)
        {
            lv_task_handler();
            rt_thread_mdelay(LVGL_TICK_MS);
        }
        else
        {
            /* 屏幕关闭, 降低刷新频率省电 */
            rt_thread_mdelay(500);
        }
    }
}

/* ===================== BLE 线程 ===================== */
static void ble_thread_entry(void *p)
{
    (void)p;
    app_env_t *env = ble_app_get_env();

    while (1)
    {
        uint32_t value;
        if (rt_mb_recv(env->mb_handle, (rt_uint32_t *)&value,
                       RT_WAITING_FOREVER) != RT_EOK)
            continue;
        if (value != BLE_POWER_ON_IND || env->is_power_on)
            continue;

        env->is_power_on = 1;
        for (uint32_t i = 0; i < BLE_APP_MAX_CONN_COUNT; i++)
            env->conn[i].conn_idx = 0xFF;

        ble_app_service_init();
        LOG_I("BLE power on, scanning...");
        ble_app_start_scan();
    }
}
static uint32_t last_bat = 0;
#define CHARGE_DETECT_PIN 44
static void battery_get_value_thread_entry(void *p)
{
    (void)p;

    battery_calculator_t battery_calc;
    battery_calculator_config_t calc_config = {
        .charging_table = charging_curve_table,
        .charging_table_size = charging_curve_table_size,
        .discharging_table = discharge_curve_table,
        .discharging_table_size = discharge_curve_table_size,
        .charge_filter_threshold = 50,     // 充电时50mV阈值
        .discharge_filter_threshold = 30,  // 放电时30mV阈值
        .filter_count = 3,                 // 需要3次确认
        .secondary_filter_enabled = true,  // 启用二级滤波
        .secondary_filter_weight_pre = 90, // 前电压权重90%
        .secondary_filter_weight_cur = 10  // 当前电压权重10%
    };

    battery_calculator_init(&battery_calc, &calc_config);
    uint8_t level = 0;
    while (1)
    {
        // uint8_t level = battery_get_info();

        // 2. 读取ADC电压值
        rt_device_t battery_device = rt_device_find("bat1");
        rt_adc_cmd_read_arg_t read_arg;
        read_arg.channel = 7;

        rt_adc_enable((rt_adc_device_t)battery_device, read_arg.channel);
        rt_thread_mdelay(300);

        rt_uint32_t battery_level = rt_adc_read((rt_adc_device_t)battery_device, read_arg.channel);
        rt_adc_disable((rt_adc_device_t)battery_device, read_arg.channel);
        

        level = battery_calculator_get_percent(&battery_calc, battery_level);
        LOG_E("battery level: %d", level);
        app_on_battery_notice(level);

        rt_thread_mdelay(1500);
    }
}

/* ===================== BLE 扫描 ===================== */
static void ble_app_start_scan(void)
{
    app_env_t *env = ble_app_get_env();
    env->esp32_found = 0;

    ble_gap_scan_start_t sp;
    memset(&sp, 0, sizeof(sp));
    sp.own_addr_type = GAPM_STATIC_ADDR;
    sp.type = GAPM_SCAN_TYPE_OBSERVER;
    sp.dup_filt_pol = 1;
    sp.scan_param_1m.scan_intv = 0x60;
    sp.scan_param_1m.scan_wd = 0x30;
    sp.duration = 1500;
    ble_gap_scan_start(&sp);
}

/* ===================== BLE 连接 ===================== */
static uint8_t ble_app_create_connection(ble_gap_addr_t *addr)
{
    app_env_t *env = ble_app_get_env();
    ble_gap_connection_create_param_t *p = &env->last_init_conn;
    memset(p, 0, sizeof(*p));
    p->own_addr_type = GAPM_STATIC_ADDR;
    p->conn_to = 500;
    p->type = GAPM_INIT_TYPE_DIRECT_CONN_EST;
    p->conn_param_1m.scan_intv = 0x60;
    p->conn_param_1m.scan_wd = 0x30;
    p->conn_param_1m.conn_intv_max = 0x28;
    p->conn_param_1m.conn_intv_min = 0x18;
    p->conn_param_1m.supervision_to = 500;
    p->conn_param_1m.ce_len_max = 48;
    memcpy(&p->peer_addr, addr, sizeof(ble_gap_addr_t));
    return ble_gap_create_connection(p);
}

/* ===================== 写 CCCD 订阅 Notify ===================== */
static void ble_app_write_cccd(uint8_t dev_idx, uint16_t handle)
{
    app_env_t *env = ble_app_get_env();
    uint8_t cccd[2] = {0x01, 0x00};
    sibles_write_remote_value_t v;
    v.handle = handle;
    v.write_type = SIBLES_WRITE;
    v.len = 2;
    v.value = cccd;
    sibles_write_remote_value(env->conn[dev_idx].rmt_svc_hdl,
                              env->conn[dev_idx].conn_idx, &v);
}

/* ===================== 解析广播名称 ===================== */
static int ble_app_parse_adv_name(uint8_t *data, uint16_t length,
                                  char *name, uint8_t buf_sz)
{
    uint8_t *pos = data;
    uint16_t rem = length;
    name[0] = '\0';
    while (rem > 1)
    {
        uint8_t flen = pos[0], ftype = pos[1];
        if (flen == 0 || flen > rem)
            break;
        if ((ftype == 0x09 || ftype == 0x08) && flen > 1)
        {
            uint8_t nlen = flen - 1;
            if (nlen >= buf_sz)
                nlen = buf_sz - 1;
            memcpy(name, &pos[2], nlen);
            name[nlen] = '\0';
            return nlen;
        }
        pos += flen + 1;
        rem -= (flen + 1);
    }
    return 0;
}

/*
 * ===================== 本地 GATT Server 回调 =====================
 * 当前项目只做 Central, 这两个回调是 sibles_register_cbk 必须的。
 * 如果未来不需要本地 Server, 可删除 ble_app_service_init 和这两个回调。
 */
static uint8_t *ble_app_gatts_get_cbk(uint8_t conn_idx, uint8_t idx, uint16_t *len)
{
    app_env_t *env = ble_app_get_env();
    uint8_t di = ble_app_get_dev_by_idx(env, conn_idx);
    *len = 0;
    if (idx == BLE_APP_CHAR_VALUE && di != 0xFF)
    {
        *len = 4;
        return (uint8_t *)&env->conn[di].data.data;
    }
    return NULL;
}

static uint8_t ble_app_gatts_set_cbk(uint8_t conn_idx, sibles_set_cbk_t *para)
{
    app_env_t *env = ble_app_get_env();
    uint8_t di = ble_app_get_dev_by_idx(env, conn_idx);
    if (di == 0xFF)
        return 0;
    if (para->idx == BLE_APP_CHAR_VALUE && para->len <= 4)
        memcpy(&env->conn[di].data.data, para->value, para->len);
    else if (para->idx == BLE_APP_CLIENT_CHAR_CONFIG_DESCRIPTOR)
        env->conn[di].data.is_config_on = *(para->value);
    return 0;
}

/* ===================== GATT Client 回调 (核心: 收 ESP32 数据) ===================== */
static int ble_app_gattc_event_handler(uint16_t event_id, uint8_t *data, uint16_t len)
{
    switch (event_id)
    {
    case SIBLES_REMOTE_EVENT_IND:
    {
        /* 收到 ESP32 Notify → 转发给 LVGL 线程 */
        sibles_remote_event_ind_t *ind = (sibles_remote_event_ind_t *)data;
        app_on_ble_notify(ind->value, ind->length);
        break;
    }
    case SIBLES_REGISTER_REMOTE_SVC_RSP:
    {
        sibles_register_remote_svc_rsp_t *rsp = (sibles_register_remote_svc_rsp_t *)data;
        LOG_I("Remote svc register: %d", rsp->status);
        break;
    }
    /* READ_REMOTE_VALUE_RSP: 当前未使用 shell read, 不处理 */
    default:
        break;
    }
    return 0;
}

/* ===================== Service 注册 ===================== */
static void ble_app_service_init(void)
{
    app_env_t *env = ble_app_get_env();
    sibles_register_svc_128_t svc;
    svc.att_db = (struct attm_desc_128 *)&app_att_db;
    svc.num_entry = BLE_APP_ATT_NB;
    svc.sec_lvl = PERM(SVC_AUTH, NO_AUTH) | PERM(SVC_UUID_LEN, UUID_128) |
                  PERM(SVC_MI, ENABLE);
    svc.uuid = g_app_svc;
    env->srv_handle = sibles_register_svc_128(&svc);
    if (env->srv_handle)
        sibles_register_cbk(env->srv_handle, ble_app_gatts_get_cbk,
                            ble_app_gatts_set_cbk);
}

/* ===================== 连接 / 断开 ===================== */
static void ble_app_device_connected(app_env_t *env,
                                     connection_manager_connect_ind_t *ind)
{
    uint32_t i;
    for (i = 0; i < BLE_APP_MAX_CONN_COUNT; i++)
        if (env->conn[i].conn_idx == 0xFF)
            break;
    if (i == BLE_APP_MAX_CONN_COUNT)
        return;

    env->conn_count++;
    env->conn[i].conn_idx = ind->conn_idx;
    env->conn[i].peer_addr = ind->peer_addr;
    env->conn[i].role = ind->role;
    env->conn[i].mtu = 23;
    env->conn[i].data.is_config_on = 0;
    env->conn[i].data.data = 0;

    LOG_I("Connected dev %d, addr:%02x:%02x:%02x:%02x:%02x:%02x",
          i, ind->peer_addr.addr[5], ind->peer_addr.addr[4],
          ind->peer_addr.addr[3], ind->peer_addr.addr[2],
          ind->peer_addr.addr[1], ind->peer_addr.addr[0]);
}

static void ble_app_device_disconnected(app_env_t *env, uint8_t idx, uint8_t reason)
{
    if (idx >= BLE_APP_MAX_CONN_COUNT || env->conn[idx].conn_idx == 0xFF)
        return;
    LOG_I("Dev %d disconnected, reason:%d", idx, reason);
    env->conn[idx].conn_idx = 0xFF;
    env->conn_count--;
}

/* ===================== BLE 全局事件 ===================== */
static int ble_app_event_handler(uint16_t event_id, uint8_t *data,
                                 uint16_t len, uint32_t context)
{
    app_env_t *env = ble_app_get_env();

    switch (event_id)
    {

    /* BLE 协议栈上电 */
    case BLE_POWER_ON_IND:
        if (env->mb_handle)
            rt_mb_send(env->mb_handle, BLE_POWER_ON_IND);
        break;

    /* 扫描启动确认 */
    case BLE_GAP_SCAN_START_CNF:
        break;

    /* 扫描结束: 没找到就重试 */
    case BLE_GAP_SCAN_STOPPED_IND:
        if (!env->esp32_found && !env->esp32_connected)
        {
            rt_thread_mdelay(3000);
            ble_app_start_scan();
        }
        break;

    /* 扫描到广播: 匹配名称后连接 */
    case BLE_GAP_EXT_ADV_REPORT_IND:
    {
        if (env->esp32_found)
            break;
        ble_gap_ext_adv_report_ind_t *ind = (ble_gap_ext_adv_report_ind_t *)data;
        char name[32] = {0};
        ble_app_parse_adv_name(ind->data, ind->length, name, sizeof(name));
        if (name[0] && strstr(name, ESP32_DEVICE_NAME))
        {
            env->esp32_found = 1;
            LOG_I("Found ESP32: %s RSSI:%d", name, ind->rssi);
            ble_gap_scan_stop();
            if (ble_app_create_connection(&ind->addr) != HL_ERR_NO_ERROR)
            {
                env->esp32_found = 0;
            }
        }
        break;
    }

    /* 连接创建结果 */
    case BLE_GAP_CREATE_CONNECTION_CNF:
    {
        ble_gap_create_connection_cnf_t *cnf = (ble_gap_create_connection_cnf_t *)data;
        if (cnf->status != HL_ERR_NO_ERROR)
        {
            env->esp32_found = 0;
            rt_thread_mdelay(2000);
            ble_app_start_scan();
        }
        break;
    }

    /* 连接建立: MTU 协商 + 搜索 Service */
    case CONNECTION_MANAGER_CONNCTED_IND:
    {
        connection_manager_connect_ind_t *ind = (connection_manager_connect_ind_t *)data;
        if (env->conn_count >= BLE_APP_MAX_CONN_COUNT)
        {
            ble_gap_disconnect_t dis = {ind->conn_idx, CO_ERROR_REMOTE_USER_TERM_CON};
            ble_gap_disconnect(&dis);
            break;
        }
        ble_app_device_connected(env, ind);
        sibles_exchange_mtu(ind->conn_idx);
        if (ind->role == 0)
        { /* Master = 我们发起的 */
            env->esp32_connected = 1;
            env->esp32_dev_idx = ble_app_get_dev_by_idx(env, ind->conn_idx);
            app_on_ble_connected(true);
            sibles_search_service(ind->conn_idx, 16, (uint8_t *)g_esp32_svc_uuid);
        }
        break;
    }

    /* MTU 协商完成 */
    case SIBLES_MTU_EXCHANGE_IND:
    {
        sibles_mtu_exchange_ind_t *ind = (sibles_mtu_exchange_ind_t *)data;
        uint8_t idx = ble_app_get_dev_by_idx(env, ind->conn_idx);
        if (idx != 0xFF)
            env->conn[idx].mtu = ind->mtu;
        break;
    }

    /* 连接参数更新 (仅记录, 不需要额外处理) */
    case BLE_GAP_UPDATE_CONN_PARAM_IND:
        break;

    /* Service 搜索完成: 注册 + 订阅 Notify */
    case SIBLES_SEARCH_SVC_RSP:
    {
        sibles_svc_search_rsp_t *rsp = (sibles_svc_search_rsp_t *)data;
        if (rsp->result != HL_ERR_NO_ERROR)
            break;
        uint8_t di = ble_app_get_dev_by_idx(env, rsp->conn_idx);
        if (di == 0xFF)
            break;

        /* 拷贝 Service */
        memcpy(&env->conn[di].svc, rsp->svc, sizeof(sibles_svc_remote_svc_t));
        env->conn[di].svc.att_db = malloc(
            env->conn[di].svc.char_count *
            (sizeof(sibles_svc_search_char_t) +
             APP_MAX_DESC * sizeof(struct sibles_disc_char_desc_ind)));
        if (!env->conn[di].svc.att_db)
            break;

        uint16_t off;
        sibles_svc_search_char_t *src = (sibles_svc_search_char_t *)rsp->svc->att_db;
        sibles_svc_search_char_t *dst = (sibles_svc_search_char_t *)env->conn[di].svc.att_db;
        for (uint32_t i = 0; i < rsp->svc->char_count; i++)
        {
            uint8_t dn = src->desc_count > APP_MAX_DESC ? APP_MAX_DESC : src->desc_count;
            memcpy(dst, src,
                   sizeof(sibles_svc_search_char_t) +
                       dn * sizeof(struct sibles_disc_char_desc_ind));
            off = sizeof(sibles_svc_search_char_t) +
                  src->desc_count * sizeof(struct sibles_disc_char_desc_ind);
            src = (sibles_svc_search_char_t *)((uint8_t *)src + off);
            off = sizeof(sibles_svc_search_char_t) +
                  dn * sizeof(struct sibles_disc_char_desc_ind);
            dst = (sibles_svc_search_char_t *)((uint8_t *)dst + off);
        }

        /* 注册远端 Service */
        env->conn[di].rmt_svc_hdl = sibles_register_remote_svc(
            rsp->conn_idx, rsp->svc->hdl_start, rsp->svc->hdl_end,
            ble_app_gattc_event_handler);

        /* 遍历 Char, 找 Notify 的写 CCCD */
        sibles_svc_search_char_t *ch =
            (sibles_svc_search_char_t *)env->conn[di].svc.att_db;
        for (uint32_t i = 0; i < env->conn[di].svc.char_count; i++)
        {
            if (ch->prop & 0x10)
            { /* Notify bit */
                for (uint32_t t = 0; t < ch->desc_count; t++)
                {
                    if (ch->desc[t].uuid_len == 2 &&
                        ch->desc[t].uuid[0] == 0x02 &&
                        ch->desc[t].uuid[1] == 0x29)
                    {
                        ble_app_write_cccd(di, ch->desc[t].attr_hdl);
                    }
                }
            }
            off = sizeof(sibles_svc_search_char_t) +
                  ch->desc_count * sizeof(struct sibles_disc_char_desc_ind);
            ch = (sibles_svc_search_char_t *)((uint8_t *)ch + off);
        }
        LOG_I("Notify subscribed, ready.");
        break;
    }

    /* 断开: 自动重连 */
    case BLE_GAP_DISCONNECTED_IND:
    {
        ble_gap_disconnected_ind_t *ind = (ble_gap_disconnected_ind_t *)data;
        uint8_t idx = ble_app_get_dev_by_idx(env, ind->conn_idx);
        if (idx == 0xFF)
            break;
        ble_app_device_disconnected(env, idx, ind->reason);
        if (idx == env->esp32_dev_idx && env->esp32_connected)
        {
            env->esp32_connected = 0;
            env->esp32_found = 0;
            app_on_ble_connected(false);
            rt_thread_mdelay(3000);
            ble_app_start_scan();
        }
        break;
    }

    default:
        break;
    }
    return 0;
}
/*
    action:
    BUTTON_PRESSED  = 0,    Indicates that a button is pressed
    BUTTON_RELEASED = 1,    Indicates that a button is released
    BUTTON_LONG_PRESSED = 2, Indicates that a button is long released
    BUTTON_CLICKED  = 3,     Indicates that a button is clicked
*/
static void button_event_handler(int32_t pin, button_action_t action)
{
    switch (pin)
    {
    case 34:
        if (action == BUTTON_CLICKED)
        {

            // ui_handles_t *ui_t = ui_get_handles();
            // g_screen_on ? panel_open_anim(ui_t->black_src) : panel_close_anim(ui_t->black_src);
            g_screen_on = !g_screen_on;
            if (g_screen_on)
            {
                /* 开屏: 恢复背光 */
                rt_device_t lcd = rt_device_find("lcd");
                if (lcd)
                    rt_device_control(lcd, RTGRAPHIC_CTRL_POWERON, RT_NULL);

                rt_device_t touch = rt_device_find("touch");
                if (touch)
                {
                    rt_device_close(touch);
                    rt_device_open(touch, RT_DEVICE_FLAG_RDONLY);
                }

                lv_obj_invalidate(lv_scr_act());
                // LOG_I("Screen ON");
            }
            else
            {
                /* 关屏: 关闭背光 */
                rt_device_t lcd = rt_device_find("lcd");
                if (lcd)
                    rt_device_control(lcd, RTGRAPHIC_CTRL_POWEROFF, RT_NULL);
                // LOG_I("Screen OFF");
            }
        }
        break;

    default:
        break;
    }
    rt_kprintf("button:%d,%d\n", pin, action);
}

void button_config_init()
{
    button_cfg_t cfg;

    cfg.pin = BSP_KEY1_PIN;
    cfg.active_state = BUTTON_ACTIVE_HIGH;
    cfg.mode = PIN_MODE_INPUT;
    cfg.button_handler = button_event_handler;
    int32_t id = button_init(&cfg);
    RT_ASSERT(id >= 0);
    RT_ASSERT(SF_EOK == button_enable(id));

    cfg.pin = BSP_KEY2_PIN;
    cfg.active_state = BUTTON_ACTIVE_HIGH;
    cfg.mode = PIN_MODE_INPUT;
    cfg.button_handler = button_event_handler;
    id = button_init(&cfg);
    RT_ASSERT(id >= 0);
    RT_ASSERT(SF_EOK == button_enable(id));
}

BLE_EVENT_REGISTER(ble_app_event_handler, NULL);
/* ===================== main ===================== */
int main(void)
{

    button_config_init();
    app_env_t *env = ble_app_get_env();
    memset(env, 0, sizeof(app_env_t));
    env->mb_handle = rt_mb_create("app", 8, RT_IPC_FLAG_FIFO);

    /* LVGL 线程: 独立刷屏, 不被 BLE 阻塞 */
    rt_thread_t t1 = rt_thread_create("lvgl", lvgl_thread_entry, NULL,
                                      LVGL_THREAD_STACK, LVGL_THREAD_PRIO, 10);
    if (t1)
        rt_thread_startup(t1);

    /* BLE 线程: 等待上电邮箱 */
    rt_thread_t t2 = rt_thread_create("ble", ble_thread_entry, NULL,
                                      BLE_THREAD_STACK, BLE_THREAD_PRIO, 10);
    if (t2)
        rt_thread_startup(t2);

    sifli_ble_enable();

#ifdef ULOG_USING_FILTER
    ulog_tag_lvl_filter_set("BLE_GAP", LOG_LVL_WARNING);
    ulog_tag_lvl_filter_set("sibles", LOG_LVL_WARNING);
#endif

    return RT_EOK;
}

/* ===================== Shell: 仅保留 scan 和 status ===================== */
int cmd_diss(int argc, char *argv[])
{

    app_env_t *env = ble_app_get_env();
    if (argc < 2)
    {
        LOG_I("  diss scan   - Rescan ESP32");
        LOG_I("  diss status - Show connection");
        return 0;
    }
    if (strcmp(argv[1], "scan") == 0)
    {
        ble_app_start_scan();
    }
    else if (strcmp(argv[1], "status") == 0)
    {
        LOG_I("Power:%s ESP32:%s Conns:%d",
              env->is_power_on ? "ON" : "OFF",
              env->esp32_connected ? "YES" : "NO",
              env->conn_count);
    }
    return 0;
}

FINSH_FUNCTION_EXPORT_ALIAS(cmd_diss, __cmd_diss, BLE commands.);
