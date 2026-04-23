/**
 * @file app_entry.c
 * @brief BLE→LVGL 消息桥 (rt_mq 跨线程安全)
 */
#include "app_entry.h"
#include "app_ui.h"
#include "app_logic.h"
#include <rtthread.h>
#include <string.h>

#define LOG_TAG "app_entry"
#include "log.h"

enum
{
    MSG_NOTIFY = 1,
    MSG_CONN,
    MSG_BATTERY
};

typedef struct
{
    uint16_t type;
    uint16_t length;
    union
    {
        char *json;
        rt_uint32_t connected;
    } d;
} ui_msg_t;

typedef struct
{
    uint8_t battery_value;
} ui_battery_msg_t;

static rt_mq_t g_mq = RT_NULL;
static rt_mq_t g_battery = RT_NULL;

void app_on_ble_notify(const uint8_t *data, uint16_t length)
{
    if (!g_mq || length < 2 || data[0] != '{')
        return;
    char *json = rt_malloc(length + 1);
    if (!json)
        return;
    memcpy(json, data, length);
    json[length] = '\0';

    ui_msg_t msg = {.type = MSG_NOTIFY, .length = length};
    msg.d.json = json;
    if (rt_mq_send(g_mq, &msg, sizeof(msg)) != RT_EOK)
        rt_free(json);
}

void app_on_ble_connected(bool connected)
{
    if (!g_mq)
        return;
    ui_msg_t msg = {.type = MSG_CONN, .length = 0};
    msg.d.connected = connected ? 1 : 0;
    rt_mq_send(g_mq, &msg, sizeof(msg));
}

void app_on_battery_notice(uint8_t battery_level)
{
    if (!g_battery)
        return;
    ui_battery_msg_t msg = {.battery_value = battery_level};
    rt_err_t ret = rt_mq_send(g_battery, &msg, sizeof(msg));
}

void app_lvgl_init(void)
{
    g_mq = rt_mq_create("ui_mq", sizeof(ui_msg_t), 8, RT_IPC_FLAG_FIFO);
    g_battery = rt_mq_create("bat_mq", sizeof(ui_battery_msg_t), 8, RT_IPC_FLAG_FIFO);
    logic_init();
    ui_init(logic_on_switch_changed);
    ui_set_conn_status(false);
    LOG_I("LVGL app ready");
}

void app_lvgl_process(void)
{
    ui_msg_t msg;
    while (g_mq && rt_mq_recv(g_mq, &msg, sizeof(msg), 0) == RT_EOK)
    {
        if (msg.type == MSG_NOTIFY && msg.d.json)
        {
            logic_on_ble_data(msg.d.json, msg.length);
            rt_free(msg.d.json);
        }
        else if (msg.type == MSG_CONN)
        {
            ui_set_conn_status(msg.d.connected ? true : false);
        }
    }
    ui_battery_msg_t battery_msg;
    while (g_battery && rt_mq_recv(g_battery, &battery_msg, sizeof(battery_msg), 0) == RT_EOK)
    {
        lv_obj_t *lbl = ui_get_handles()->lbl_battery;

        if (lbl)
        {
            battery_update_ui(lbl, battery_msg.battery_value);
        }
    }
}