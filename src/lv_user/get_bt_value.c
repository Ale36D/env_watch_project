#include "get_bt_value.h"
#include "bf0_hal.h"
#include "drv_io.h"
#include <rtthread.h>
#include <rtdevice.h>
#include "battery_calculator.h"

#define LOG_TAG "battery"
#include "log.h"

/* ==================== 电池检测配置 ==================== */

/*
 * 黄山派 PA_34 连接充电芯片(AW23001)的 STAT 引脚:
 *   低电平 = 正在充电
 *   高电平 = 未充电 (充满或未接电源)
 */
#define CHARGE_STAT_PIN 44

/*
 * VBAT 电压范围 (单芯锂电池):
 *   4.2V = 100%  (充满)
 *   3.7V = 50%   (标称)
 *   3.4V = 0%    (关机阈值附近)
 */
#define VBAT_MAX_MV 4200
#define VBAT_MIN_MV 3400

/* ==================== 充电状态检测 ==================== */

/**
 * 检测是否正在充电
 * PA_34 = LOW → 充电中
 * PA_34 = HIGH → 未充电
 */
static bool battery_is_charging(void)
{
    return (rt_pin_read(CHARGE_STAT_PIN) == PIN_LOW);
}

/**
 * 获取电池完整信息
 */

uint8_t battery_get_info()
{
    return 0;
}

/**
 * 初始化电池检测 (在 main 里调用一次)
 */
void battery_get_value_task(void *p)
{
}
void battery_init(void)
{
}

/* ==================== LVGL 显示集成 ==================== */

/*
 * 在 LVGL 线程里定时调用, 更新顶栏电池图标
 * 建议放在 app_lvgl_process() 里, 每 10 秒读一次
 *
 * 用法示例:
 *
 * static uint32_t last_bat_tick = 0;
 * if (lv_tick_get() - last_bat_tick > 10000) {
 *     last_bat_tick = lv_tick_get();
 *     battery_update_ui(your_battery_label);
 * }
 */
void battery_update_ui(lv_obj_t *lbl, uint8_t value)
{
    if (!lbl)
        return;
    char buf[32];
    uint8_t bt_value = value;

    if (!battery_is_charging())
    {
        lv_snprintf(buf, sizeof(buf), LV_SYMBOL_CHARGE " %d", bt_value);
        lv_obj_set_style_text_color(lbl, lv_color_hex(0xffa502), 0); /* 黄色 */
    }
    else if (bt_value <= 10)
    {
        lv_snprintf(buf, sizeof(buf), LV_SYMBOL_BATTERY_EMPTY " %d", bt_value);
        lv_obj_set_style_text_color(lbl, lv_color_hex(0xff4757), 0); /* 红色 */
    }
    else if (bt_value <= 30)
    {
        lv_snprintf(buf, sizeof(buf), LV_SYMBOL_BATTERY_1 " %d", bt_value);
        lv_obj_set_style_text_color(lbl, lv_color_hex(0xff6348), 0); /* 橙色 */
    }
    else if (bt_value <= 60)
    {
        lv_snprintf(buf, sizeof(buf), LV_SYMBOL_BATTERY_2 " %d", bt_value);
        lv_obj_set_style_text_color(lbl, lv_color_white(), 0);
    }
    else
    {
        lv_snprintf(buf, sizeof(buf), LV_SYMBOL_BATTERY_FULL " %d", bt_value);
        lv_obj_set_style_text_color(lbl, lv_color_hex(0xFFFFFF), 0);
    }

    lv_label_set_text(lbl, buf);
}