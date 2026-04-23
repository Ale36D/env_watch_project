/**
 * @file app_entry.h
 * @brief BLE 线程 ↔ LVGL 线程消息桥
 */
#ifndef APP_ENTRY_H
#define APP_ENTRY_H

#include <stdint.h>
#include <stdbool.h>
#include "app_logic.h"
#include "get_bt_value.h"

#ifdef __cplusplus
extern "C"
{
#endif

    void app_lvgl_init(void);                                     /* LVGL 线程中调用 */
    void app_lvgl_process(void);                                  /* LVGL loop 中每帧调用 */
    void app_on_ble_notify(const uint8_t *data, uint16_t length); /* BLE 线程调用 */
    void app_on_ble_connected(bool connected);                    /* BLE 线程调用 */
    void app_on_battery_notice(uint8_t battery_level);

#ifdef __cplusplus
}
#endif
#endif