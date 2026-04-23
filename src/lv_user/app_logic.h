/**
 * @file app_logic.h
 * @brief 逻辑层 - JSON 解析 + 数据处理
 */
#ifndef APP_LOGIC_H
#define APP_LOGIC_H

#include "app_ui.h"
#include <stdbool.h>
#include <stdint.h>

#ifdef __cplusplus
extern "C"
{
#endif

    void logic_init(void);
    int logic_on_ble_data(const char *json, uint16_t len);
    void logic_on_switch_changed(int relay_id, bool state);
    const sensor_data_t *logic_get_data(void);

#ifdef __cplusplus
}
#endif
#endif