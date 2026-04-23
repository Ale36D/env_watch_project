#ifndef GET_BT_VALUE_H
#define GET_BT_VALUE_H
#include "lvgl.h"

#ifdef __cplusplus
extern "C"
{
#endif
    void battery_init(void);
    uint8_t battery_get_info();
    void battery_update_ui(lv_obj_t *lbl, uint8_t value);

#ifdef __cplusplus
}
#endif
#endif