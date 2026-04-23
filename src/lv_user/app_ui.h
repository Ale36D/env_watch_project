/**
 * @file app_ui.h
 * @brief UI 层 - 390×450 圆角屏
 *
 * 所有传感器都是卡片, 一屏 4 张 (2×2), 可滚动
 * Tab1 "Sensor" - sensor{} 全部 15 个字段卡片
 * Tab2 "Relay"  - relay{} 5 个状态卡片 (只读 ON/OFF) + RGB 色块
 * Tab3 "Device" - id / cmd / updateTime / 连接状态
 */
#ifndef APP_UI_H
#define APP_UI_H

#include "lvgl.h"

#ifdef __cplusplus
extern "C"
{
#endif

/* ==================== 屏幕 ==================== */
#define UI_SCR_W 390
#define UI_SCR_H 450
#define UI_HDR_H 42
#define UI_TAB_H 34
#define UI_PAD 10

/* ==================== 颜色 ==================== */
#define UI_C_BG lv_color_hex(0xECF5EC)
#define UI_C_CARD lv_color_hex(0xF5FAF0)
#define UI_C_CARD_BD lv_color_hex(0xD5E8D4)
#define UI_C_TEXT lv_color_hex(0x263238)
#define UI_C_SUB lv_color_hex(0x78909C)
#define UI_C_GREEN lv_color_hex(0x43A047)
#define UI_C_GREEN_L lv_color_hex(0xA5D6A7)
#define UI_C_ORANGE lv_color_hex(0xFB8C00)
#define UI_C_RED lv_color_hex(0xE53935)
#define UI_C_BLUE lv_color_hex(0x1E88E5)
#define UI_C_PURPLE lv_color_hex(0x8E24AA)
#define UI_C_YELLOW lv_color_hex(0xFFB300)
#define UI_C_TEAL lv_color_hex(0x00897B)
#define UI_C_PINK lv_color_hex(0xD81B60)
#define UI_C_BROWN lv_color_hex(0x6D4C41)
#define UI_C_GREY lv_color_hex(0x546E7A)

#define UI_CARD_R 14
#define UI_CARD_PAD 10
#define UI_CARD_OPA LV_OPA_80

    /* ==================== 数据 ==================== */
    typedef struct
    {
        /* sensor{} */
        float tp;         /* 温度 ℃ */
        float hm;         /* 湿度 % */
        int l;            /* 光照 Lux */
        int vt;           /* 震动 */
        int dp;           /* 倾斜 */
        float pr;         /* 气压 Pa */
        float al;         /* 高度 m */
        int madc;         /* 气体浓度 */
        int mdi;          /* 气体阈值 */
        int fd;           /* 水浸 */
        float aX, aY, aZ; /* 三轴 */
        int rl;           /* 横滚角 */
        int pc;           /* 俯仰角 */

        /* relay{} */
        int r_1, r_2, r_3, r_4, bz;

        /* rgb{} */
        int rgb_r, rgb_g, rgb_b;

        /* dev_s{} 设备状态 */
        int w_s;  /* WiFi 状态: 1=连接 0=断开 */
        int mt_s; /* MQTT 状态: 1=连接 0=断开 */

        /* 顶层 */
        char id[32];
        char cmd[8];
        char update_time[16];
    } sensor_data_t;

    /* ==================== UI 句柄 ==================== */
    typedef struct
    {
        /* Tab1: 15 个传感器卡片的数值 label */
        lv_obj_t *lbl_tp;   /* 温度 */
        lv_obj_t *lbl_hm;   /* 湿度 */
        lv_obj_t *lbl_l;    /* 光照 */
        lv_obj_t *lbl_vt;   /* 震动 */
        lv_obj_t *lbl_dp;   /* 倾斜 */
        lv_obj_t *lbl_pr;   /* 气压 */
        lv_obj_t *lbl_al;   /* 高度 */
        lv_obj_t *lbl_madc; /* 气体浓度 */
        lv_obj_t *lbl_mdi;  /* 气体阈值 */
        lv_obj_t *lbl_fd;   /* 水浸 */
        lv_obj_t *lbl_aX;   /* X轴 */
        lv_obj_t *lbl_aY;   /* Y轴 */
        lv_obj_t *lbl_aZ;   /* Z轴 */
        lv_obj_t *lbl_rl;   /* 横滚角 */
        lv_obj_t *lbl_pc;   /* 俯仰角 */

        /* Tab2: relay 状态 + RGB */
        lv_obj_t *lbl_r1; /* R1 ON/OFF */
        lv_obj_t *lbl_r2;
        lv_obj_t *lbl_r3;
        lv_obj_t *lbl_r4;
        lv_obj_t *lbl_bz;
        lv_obj_t *lbl_rgb;         /* RGB 数值 */
        lv_obj_t *obj_rgb_preview; /* RGB 色块 */

        /* Tab3: 设备 */
        lv_obj_t *lbl_id, *lbl_cmd, *lbl_time, *lbl_conn;

        /* 顶栏 */
        lv_obj_t *lbl_title, *lbl_status, *lbl_wifi_status, *lbl_mqtt_status;

        /* 下拉状态栏 */
        lv_obj_t *panel_dropdown; /* 下拉面板 */
        lv_obj_t *lbl_drop_conn;  /* 连接状态 */
        lv_obj_t *lbl_drop_id;    /* 设备 ID */
        lv_obj_t *lbl_drop_time;  /* 更新时间 */
        lv_obj_t *lbl_drop_rssi;  /* 信号/附加信息 */

        /* 通知栏 */
        lv_obj_t *notice_crad;
        lv_obj_t *notice_icon;
        lv_obj_t *notice_value;

        // 电量显示
        lv_obj_t *lbl_battery;

        lv_obj_t *black_src; /* 用于遮罩动画的黑色背景 */
    } ui_handles_t;

    typedef void (*ui_switch_cb_t)(int relay_id, bool state);

    void ui_init(ui_switch_cb_t cb);
    void ui_update(const sensor_data_t *d);
    void ui_set_conn_status(bool connected);
    ui_handles_t *ui_get_handles(void);
    void control_screen(uint8_t flag);
    void panel_open_anim(lv_obj_t *panel);
    void panel_close_anim(lv_obj_t *panel);
    void _show_notice_card(const char *sym, const char *notice_text);

    LV_IMG_DECLARE(_dev_info_alpha_100x100);
    LV_IMG_DECLARE(_app_icon_alpha_100x100);

    LV_FONT_DECLARE(lv_customer_font_PingFangSC_Regular_16)
    LV_FONT_DECLARE(lv_customer_font_PingFangSC_Regular_24)
    LV_FONT_DECLARE(lv_customer_font_PingFangSC_Regular_32)

#ifdef __cplusplus
}
#endif
#endif