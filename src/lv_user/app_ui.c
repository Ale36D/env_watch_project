/**
 * @file app_ui.c
 * @brief UI 层 - 390×450, 全部卡片化
 *
 * Tab1: 15 个传感器卡片, 2 列, 一屏显示 4 张, 向下滚动查看其余
 * Tab2: 5 个 relay 只读状态卡片 + RGB 色块卡片, 可滚动
 * Tab3: 设备信息 (id/cmd/time/conn)
 */
#include "app_ui.h"
#include <stdio.h>
#include <string.h>

static ui_handles_t g_ui;
static ui_switch_cb_t g_sw_cb = NULL;

/* ==================== 样式 ==================== */
static lv_style_t st_card, st_icon, st_big, st_mid, st_sub, st_page;
static bool _si = false;

/* ==================== 下拉状态栏 ==================== */

#define DROP_PANEL_H 160 /* 下拉面板高度 */

/* 下拉面板滑动事件 */
static void _drop_panel_event(lv_event_t *e)
{
    lv_obj_t *panel = lv_event_get_target(e);
    lv_event_code_t code = lv_event_get_code(e);

    if (code == LV_EVENT_PRESSING)
    {
        lv_point_t vect;
        lv_indev_get_vect(lv_indev_get_act(), &vect);

        lv_coord_t y = lv_obj_get_y(panel) + vect.y;
        /* 限制范围: -DROP_PANEL_H ~ 0 */
        if (y < -DROP_PANEL_H)
            y = -DROP_PANEL_H;
        if (y > 0)
            y = 0;
        lv_obj_set_y(panel, y);
    }
    else if (code == LV_EVENT_RELEASED)
    {
        lv_coord_t y = lv_obj_get_y(panel);
        lv_coord_t target = (y > -DROP_PANEL_H / 3) ? 0 : -DROP_PANEL_H;

        lv_anim_t a;
        lv_anim_init(&a);
        lv_anim_set_var(&a, panel);
        lv_anim_set_values(&a, y, target);
        lv_anim_set_time(&a, 200);
        lv_anim_set_exec_cb(&a, (lv_anim_exec_xcb_t)lv_obj_set_y);
        lv_anim_set_path_cb(&a, lv_anim_path_ease_out);
        lv_anim_start(&a);
    }
}
static void _drop_panel_click_close(lv_event_t *e)
{
    lv_obj_t *panel = lv_event_get_target(e);
    lv_coord_t y = lv_obj_get_y(panel);
    if (y >= 0)
    { /* 面板完全展开时，点击即收回 */
        lv_anim_t a;
        lv_anim_init(&a);
        lv_anim_set_var(&a, panel);
        lv_anim_set_values(&a, 0, -DROP_PANEL_H);
        lv_anim_set_time(&a, 200);
        lv_anim_set_exec_cb(&a, (lv_anim_exec_xcb_t)lv_obj_set_y);
        lv_anim_set_path_cb(&a, lv_anim_path_ease_out);
        lv_anim_start(&a);
    }
}

void panel_open_anim(lv_obj_t *panel)
{
    lv_anim_t a;
    lv_anim_init(&a);
    lv_anim_set_var(&a, panel);
    lv_anim_set_values(&a, -UI_SCR_H, 0);
    lv_anim_set_time(&a, 1000);
    lv_anim_set_exec_cb(&a, (lv_anim_exec_xcb_t)lv_obj_set_y);
    lv_anim_set_path_cb(&a, lv_anim_path_ease_in);
    lv_anim_start(&a);
}

void panel_close_anim(lv_obj_t *panel)
{
    lv_anim_t a;
    lv_anim_init(&a);
    lv_anim_set_var(&a, panel);
    lv_anim_set_values(&a, 0, -UI_SCR_H);
    lv_anim_set_time(&a, 200);
    lv_anim_set_exec_cb(&a, (lv_anim_exec_xcb_t)lv_obj_set_y);
    lv_anim_set_path_cb(&a, lv_anim_path_ease_in);
    lv_anim_start(&a);
}
static void _drop_black_src_open_event(lv_event_t *e)
{
    lv_obj_t *panel = lv_event_get_target(e);
    lv_event_code_t code = lv_event_get_code(e);

    panel_open_anim(panel);
}
static void _drop_black_src_close_event(lv_event_t *e)
{
    lv_obj_t *panel = lv_event_get_target(e);
    lv_event_code_t code = lv_event_get_code(e);

    panel_close_anim(panel);
}

static void _create_dropdown_panel(void)
{
    /* 面板: 初始藏在屏幕上方 */
    lv_obj_t *panel = lv_obj_create(lv_scr_act());
    lv_obj_set_size(panel, UI_SCR_W, DROP_PANEL_H);
    lv_obj_set_pos(panel, 0, -DROP_PANEL_H); /* 藏在顶部上方 */
    lv_obj_set_style_bg_color(panel, lv_color_hex(0x2E7D32), 0);
    lv_obj_set_style_bg_opa(panel, LV_OPA_COVER, 0);
    lv_obj_set_style_radius(panel, 0, 0);
    lv_obj_set_style_border_width(panel, 0, 0);
    lv_obj_set_style_pad_all(panel, 20, 0);
    lv_obj_set_style_pad_top(panel, 35, 0);
    lv_obj_set_flex_flow(panel, LV_FLEX_FLOW_COLUMN);
    lv_obj_set_style_pad_gap(panel, 8, 0);
    lv_obj_clear_flag(panel, LV_OBJ_FLAG_SCROLLABLE);

    /* 连接状态 (大字) */
    g_ui.lbl_drop_conn = lv_label_create(panel);
    lv_label_set_text(g_ui.lbl_drop_conn, LV_SYMBOL_CLOSE " Disconnected");
    lv_obj_set_style_text_color(g_ui.lbl_drop_conn, lv_color_hex(0xFFCDD2), 0);
    lv_obj_set_style_text_font(g_ui.lbl_drop_conn, &lv_font_montserrat_24, 0);

    /* 设备 ID */
    g_ui.lbl_drop_id = lv_label_create(panel);
    lv_label_set_text(g_ui.lbl_drop_id, "ID: --");
    lv_obj_set_style_text_color(g_ui.lbl_drop_id, lv_color_hex(0xC8E6C9), 0);
    lv_obj_set_style_text_font(g_ui.lbl_drop_id, &lv_customer_font_PingFangSC_Regular_16, 0);

    /* 更新时间 */
    g_ui.lbl_drop_time = lv_label_create(panel);
    lv_label_set_text(g_ui.lbl_drop_time, "Updated: --:--");
    lv_obj_set_style_text_color(g_ui.lbl_drop_time, lv_color_hex(0xC8E6C9), 0);
    lv_obj_set_style_text_font(g_ui.lbl_drop_time, &lv_customer_font_PingFangSC_Regular_16, 0);

    /* 附加信息 */
    g_ui.lbl_drop_rssi = lv_label_create(panel);
    lv_label_set_text(g_ui.lbl_drop_rssi, "MTU: --");
    lv_obj_set_style_text_color(g_ui.lbl_drop_rssi, lv_color_hex(0xA5D6A7), 0);
    lv_obj_set_style_text_font(g_ui.lbl_drop_rssi, &lv_customer_font_PingFangSC_Regular_16, 0);

    /* 底部提示拉条 */
    lv_obj_t *handle = lv_obj_create(panel);
    lv_obj_set_size(handle, 40, 4);
    lv_obj_set_style_bg_color(handle, lv_color_hex(0xA5D6A7), 0);
    lv_obj_set_style_bg_opa(handle, LV_OPA_80, 0);
    lv_obj_set_style_radius(handle, 2, 0);
    lv_obj_set_style_border_width(handle, 0, 0);
    lv_obj_set_align(handle, LV_ALIGN_BOTTOM_MID);
    lv_obj_clear_flag(handle, LV_OBJ_FLAG_SCROLLABLE);

    /* 注册拖动事件 */
    lv_obj_add_event_cb(panel, _drop_panel_event, LV_EVENT_PRESSING, NULL);
    lv_obj_add_event_cb(panel, _drop_panel_event, LV_EVENT_RELEASED, NULL);

    /* 置顶显示 */
    lv_obj_move_foreground(panel);

    g_ui.panel_dropdown = panel;
    lv_obj_add_event_cb(panel, _drop_panel_click_close, LV_EVENT_CLICKED, NULL);
}

static lv_timer_t *g_notify_timer = NULL;
#define NOTICE_H 42

/* 3秒后滑出隐藏 */
static void _notify_hide_cb(lv_timer_t *t)
{
    (void)t;
    if (!g_ui.notice_crad)
        return;

    lv_anim_t a;
    lv_anim_init(&a);
    lv_anim_set_var(&a, g_ui.notice_crad);
    lv_anim_set_values(&a, lv_obj_get_y(g_ui.notice_crad), -NOTICE_H);
    lv_anim_set_time(&a, 300);
    lv_anim_set_exec_cb(&a, (lv_anim_exec_xcb_t)lv_obj_set_y);
    lv_anim_set_path_cb(&a, lv_anim_path_ease_in);
    lv_anim_start(&a);

    g_notify_timer = NULL;
}

static void _create_notice_card(void)
{
    // Write codes notice_card
    lv_obj_t *notice_card = lv_obj_create(lv_scr_act());
    lv_obj_set_pos(notice_card, 14, 14);
    lv_obj_set_size(notice_card, 360, 42);
    lv_obj_set_scrollbar_mode(notice_card, LV_SCROLLBAR_MODE_OFF);

    // Write style for notice_card, Part: LV_PART_MAIN, State: LV_STATE_DEFAULT.
    lv_obj_set_style_border_width(notice_card, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_radius(notice_card, 16, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(notice_card, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_color(notice_card, lv_color_hex(0x43A047), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_grad_dir(notice_card, LV_GRAD_DIR_NONE, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_top(notice_card, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_bottom(notice_card, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_left(notice_card, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_right(notice_card, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_width(notice_card, 1, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_color(notice_card, lv_color_hex(0xffffff), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_opa(notice_card, 79, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_spread(notice_card, 1, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_ofs_x(notice_card, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_ofs_y(notice_card, 0, LV_PART_MAIN | LV_STATE_DEFAULT);

    // // Write codes notice_bar
    // lv_obj_t *notice_bar = lv_bar_create(notice_card);
    // lv_obj_set_style_anim_time(notice_bar, 1000, 0);
    // lv_bar_set_mode(notice_bar, LV_BAR_MODE_NORMAL);
    // lv_bar_set_range(notice_bar, 0, 100);
    // lv_bar_set_value(notice_bar, 50, LV_ANIM_OFF);
    // lv_obj_set_pos(notice_bar, 130, 85);
    // lv_obj_set_size(notice_bar, 100, 5);

    // // Write style for notice_bar, Part: LV_PART_MAIN, State: LV_STATE_DEFAULT.
    // lv_obj_set_style_bg_opa(notice_bar, 231, LV_PART_MAIN | LV_STATE_DEFAULT);
    // lv_obj_set_style_bg_color(notice_bar, lv_color_hex(0xffffff), LV_PART_MAIN | LV_STATE_DEFAULT);
    // lv_obj_set_style_bg_grad_dir(notice_bar, LV_GRAD_DIR_NONE, LV_PART_MAIN | LV_STATE_DEFAULT);
    // lv_obj_set_style_radius(notice_bar, 10, LV_PART_MAIN | LV_STATE_DEFAULT);
    // lv_obj_set_style_shadow_width(notice_bar, 0, LV_PART_MAIN | LV_STATE_DEFAULT);

    // // Write style for notice_bar, Part: LV_PART_INDICATOR, State: LV_STATE_DEFAULT.
    // lv_obj_set_style_bg_opa(notice_bar, 0, LV_PART_INDICATOR | LV_STATE_DEFAULT);
    // lv_obj_set_style_radius(notice_bar, 10, LV_PART_INDICATOR | LV_STATE_DEFAULT);

    // Write codes notice_icon_lb
    lv_obj_t *notice_icon_lb = lv_label_create(notice_card);
    lv_label_set_text(notice_icon_lb, "" LV_SYMBOL_BELL "");
    lv_label_set_long_mode(notice_icon_lb, LV_LABEL_LONG_WRAP);
    lv_obj_set_pos(notice_icon_lb, 5, 5);
    lv_obj_set_size(notice_icon_lb, 32, 32);

    // Write style for notice_icon_lb, Part: LV_PART_MAIN, State: LV_STATE_DEFAULT.
    lv_obj_set_style_border_width(notice_icon_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_radius(notice_icon_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_color(notice_icon_lb, lv_color_hex(0xf1f2f6), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(notice_icon_lb, &lv_font_montserrat_32, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_opa(notice_icon_lb, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_letter_space(notice_icon_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_line_space(notice_icon_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_align(notice_icon_lb, LV_TEXT_ALIGN_CENTER, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(notice_icon_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_top(notice_icon_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_right(notice_icon_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_bottom(notice_icon_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_left(notice_icon_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_width(notice_icon_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);

    // Write codes notice_value_lb
    lv_obj_t *notice_value_lb = lv_label_create(notice_card);
    lv_label_set_text(notice_value_lb, "设备没有连接到网络");
    lv_label_set_long_mode(notice_value_lb, LV_LABEL_LONG_WRAP);
    lv_obj_set_pos(notice_value_lb, 50, 10);
    lv_obj_set_size(notice_value_lb, 280, 24);

    // Write style for notice_value_lb, Part: LV_PART_MAIN, State: LV_STATE_DEFAULT.
    lv_obj_set_style_border_width(notice_value_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_radius(notice_value_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_color(notice_value_lb, lv_color_hex(0xf1f2f6), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(notice_value_lb, &lv_customer_font_PingFangSC_Regular_24, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_opa(notice_value_lb, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_letter_space(notice_value_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_line_space(notice_value_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_align(notice_value_lb, LV_TEXT_ALIGN_CENTER, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(notice_value_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_top(notice_value_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_right(notice_value_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_bottom(notice_value_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_left(notice_value_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_width(notice_value_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);

    g_ui.notice_crad = notice_card;
    g_ui.notice_icon = notice_icon_lb;
    g_ui.notice_value = notice_value_lb;
}

void _show_notice_card(const char *sym, const char *notice_text)
{
    /* 更新文字 */
    lv_label_set_text(g_ui.notice_value, notice_text);
    lv_label_set_text(g_ui.notice_icon, sym);

    /* 置顶 */
    lv_obj_move_foreground(g_ui.notice_crad);

    /* 滑入动画 */
    lv_anim_t a;
    lv_anim_init(&a);
    lv_anim_set_var(&a, g_ui.notice_crad);
    lv_anim_set_values(&a, -NOTICE_H, 30);
    lv_anim_set_time(&a, 300);
    lv_anim_set_exec_cb(&a, (lv_anim_exec_xcb_t)lv_obj_set_y);
    lv_anim_set_path_cb(&a, lv_anim_path_ease_out);
    lv_anim_start(&a);

    /* 重置 3 秒定时器 (有新消息就重新计时) */
    if (g_notify_timer)
        lv_timer_del(g_notify_timer);
    g_notify_timer = lv_timer_create(_notify_hide_cb, 3000, NULL);
    lv_timer_set_repeat_count(g_notify_timer, 1);
}

/* ==================== 加载页 (覆盖层, 省内存) ==================== */

static lv_obj_t *g_loading_layer = NULL;

static void _loading_timer_cb(lv_timer_t *timer)
{
    (void)timer;
    if (g_loading_layer)
    {
        lv_obj_del(g_loading_layer); /* 删除覆盖层, 露出下面的主页 */
        g_loading_layer = NULL;
    }
}

static void _create_loading_layer(void)
{
    // /* 全屏遮罩层, 盖在所有控件上面 */
    // g_loading_layer = lv_obj_create(lv_scr_act());
    // lv_obj_set_size(g_loading_layer, UI_SCR_W, UI_SCR_H);
    // lv_obj_set_pos(g_loading_layer, 0, 0);
    // lv_obj_set_style_bg_color(g_loading_layer, UI_C_GREEN, 0);
    // lv_obj_set_style_bg_opa(g_loading_layer, LV_OPA_COVER, 0);
    // lv_obj_set_style_radius(g_loading_layer, 0, 0);
    // lv_obj_set_style_border_width(g_loading_layer, 0, 0);
    // lv_obj_clear_flag(g_loading_layer, LV_OBJ_FLAG_SCROLLABLE);

    // /* 图标 */
    // lv_obj_t *icon = lv_label_create(g_loading_layer);
    // lv_label_set_text(icon, LV_SYMBOL_HOME);
    // lv_obj_set_style_text_color(icon, lv_color_white(), 0);
    // lv_obj_set_style_text_font(icon, &lv_font_montserrat_24, 0);
    // lv_obj_align(icon, LV_ALIGN_CENTER, 0, -30);

    // /* 标题 */
    // lv_obj_t *title = lv_label_create(g_loading_layer);
    // lv_label_set_text(title, "Seedling Monitor");
    // lv_obj_set_style_text_color(title, lv_color_hex(0xC8E6C9), 0);
    // lv_obj_set_style_text_font(title, &lv_font_montserrat_16, 0);
    // lv_obj_align(title, LV_ALIGN_CENTER, 0, 10);

    // /* Loading... */
    // lv_obj_t *tip = lv_label_create(g_loading_layer);
    // lv_label_set_text(tip, "Loading...");
    // lv_obj_set_style_text_color(tip, lv_color_hex(0xA5D6A7), 0);
    // lv_obj_set_style_text_font(tip, &lv_font_montserrat_12, 0);
    // lv_obj_align(tip, LV_ALIGN_CENTER, 0, 40);

    // Write codes screen_2
    g_loading_layer = lv_obj_create(lv_scr_act());
    lv_obj_set_size(g_loading_layer, UI_SCR_W, UI_SCR_H);
    lv_obj_set_pos(g_loading_layer, 0, 0);
    lv_obj_set_style_bg_color(g_loading_layer, UI_C_GREEN, 0);
    lv_obj_set_style_bg_opa(g_loading_layer, LV_OPA_COVER, 0);
    lv_obj_set_style_radius(g_loading_layer, 0, 0);
    lv_obj_set_style_border_width(g_loading_layer, 0, 0);
    lv_obj_clear_flag(g_loading_layer, LV_OBJ_FLAG_SCROLLABLE);

    // Write codes start_icon_ig
    lv_obj_t *start_icon_ig = lv_img_create(g_loading_layer);
    lv_obj_add_flag(start_icon_ig, LV_OBJ_FLAG_CLICKABLE);
    lv_img_set_src(start_icon_ig, &_app_icon_alpha_100x100);
    lv_img_set_pivot(start_icon_ig, 50, 50);
    lv_img_set_angle(start_icon_ig, 0);
    lv_obj_set_size(start_icon_ig, 100, 100);
    lv_obj_align(start_icon_ig, LV_ALIGN_CENTER, 0, -50);

    // Write style for start_icon_ig, Part: LV_PART_MAIN, State: LV_STATE_DEFAULT.
    lv_obj_set_style_img_recolor_opa(start_icon_ig, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_img_opa(start_icon_ig, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_radius(start_icon_ig, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_clip_corner(start_icon_ig, true, LV_PART_MAIN | LV_STATE_DEFAULT);

    // Write codes start_loading_sp
    lv_obj_t *start_loading_sp = lv_spinner_create(g_loading_layer, 1000, 90);

    lv_obj_set_size(start_loading_sp, 48, 48);
    lv_obj_align(start_loading_sp, LV_ALIGN_CENTER, 0, 125);

    // Write style for start_loading_sp, Part: LV_PART_MAIN, State: LV_STATE_DEFAULT.
    lv_obj_set_style_pad_top(start_loading_sp, 5, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_bottom(start_loading_sp, 5, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_left(start_loading_sp, 5, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_right(start_loading_sp, 5, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(start_loading_sp, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_arc_opa(start_loading_sp, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_width(start_loading_sp, 0, LV_PART_MAIN | LV_STATE_DEFAULT);

    // Write style for start_loading_sp, Part: LV_PART_INDICATOR, State: LV_STATE_DEFAULT.
    lv_obj_set_style_arc_width(start_loading_sp, 8, LV_PART_INDICATOR | LV_STATE_DEFAULT);
    lv_obj_set_style_arc_opa(start_loading_sp, 255, LV_PART_INDICATOR | LV_STATE_DEFAULT);
    lv_obj_set_style_arc_color(start_loading_sp, lv_color_hex(0xffffff), LV_PART_INDICATOR | LV_STATE_DEFAULT);

    // Write codes start_app_name_lb
    lv_obj_t *start_app_name_lb = lv_label_create(g_loading_layer);
    lv_label_set_text(start_app_name_lb, "数链");
    lv_label_set_long_mode(start_app_name_lb, LV_LABEL_LONG_WRAP);
    lv_obj_set_size(start_app_name_lb, 160, 24);
    lv_obj_align(start_app_name_lb, LV_ALIGN_CENTER, 0, 45);

    // Write style for start_app_name_lb, Part: LV_PART_MAIN, State: LV_STATE_DEFAULT.
    lv_obj_set_style_border_width(start_app_name_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_radius(start_app_name_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_color(start_app_name_lb, lv_color_hex(0xdfe4ea), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(start_app_name_lb, &lv_customer_font_PingFangSC_Regular_24, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_opa(start_app_name_lb, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_letter_space(start_app_name_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_line_space(start_app_name_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_align(start_app_name_lb, LV_TEXT_ALIGN_CENTER, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(start_app_name_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_top(start_app_name_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_right(start_app_name_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_bottom(start_app_name_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_left(start_app_name_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_width(start_app_name_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);

    // Write codes start_loading_lb
    lv_obj_t *start_loading_lb = lv_label_create(g_loading_layer);
    lv_label_set_text(start_loading_lb, "Loading...\n");
    lv_label_set_long_mode(start_loading_lb, LV_LABEL_LONG_WRAP);
    lv_obj_set_pos(start_loading_lb, 145, 300);
    lv_obj_set_size(start_loading_lb, 100, 26);
    lv_obj_align(start_loading_lb, LV_ALIGN_CENTER, 0, 75);

    // Write style for start_loading_lb, Part: LV_PART_MAIN, State: LV_STATE_DEFAULT.
    lv_obj_set_style_border_width(start_loading_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_radius(start_loading_lb, 16, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_color(start_loading_lb, lv_color_hex(0xa4b0be), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(start_loading_lb, &lv_customer_font_PingFangSC_Regular_16, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_opa(start_loading_lb, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_letter_space(start_loading_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_line_space(start_loading_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_align(start_loading_lb, LV_TEXT_ALIGN_CENTER, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(start_loading_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_top(start_loading_lb, 5, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_right(start_loading_lb, 5, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_bottom(start_loading_lb, 5, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_left(start_loading_lb, 5, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_width(start_loading_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);

    /* 置顶 */
    lv_obj_move_foreground(g_loading_layer);

    /* 3 秒后自动删除 */
    lv_timer_create(_loading_timer_cb, 3000, NULL);
}

static void _create_black_src(void)
{
    /* 面板: 初始藏在屏幕上方 */
    lv_obj_t *panel = lv_obj_create(lv_scr_act());
    lv_obj_set_size(panel, UI_SCR_W, UI_SCR_H);
    lv_obj_set_pos(panel, 0, -UI_SCR_H); /* 藏在上边 */
    lv_obj_set_style_bg_color(panel, lv_color_hex(0x000000), 0);
    lv_obj_set_style_bg_opa(panel, LV_OPA_COVER, 0);
    lv_obj_set_style_radius(panel, 0, 0);
    lv_obj_clear_flag(panel, LV_OBJ_FLAG_SCROLLABLE);
    lv_obj_move_foreground(panel);

    g_ui.black_src = panel;
}
static void _init_styles(void)
{
    if (_si)
        return;
    _si = true;

    /* 卡片: 圆角 + 阴影 */
    lv_style_init(&st_card);
    lv_style_set_radius(&st_card, UI_CARD_R);
    lv_style_set_bg_color(&st_card, UI_C_CARD);
    lv_style_set_bg_opa(&st_card, UI_CARD_OPA);
    lv_style_set_border_color(&st_card, UI_C_CARD_BD);
    lv_style_set_border_width(&st_card, 1);
    lv_style_set_border_opa(&st_card, LV_OPA_40);
    lv_style_set_pad_all(&st_card, UI_CARD_PAD);
    lv_style_set_shadow_width(&st_card, 8);
    lv_style_set_shadow_color(&st_card, UI_C_GREEN_L);
    lv_style_set_shadow_opa(&st_card, LV_OPA_20);
    lv_style_set_shadow_ofs_y(&st_card, 3);

    /* 图标圆 */
    lv_style_init(&st_icon);
    lv_style_set_radius(&st_icon, 8);
    lv_style_set_bg_opa(&st_icon, LV_OPA_20);
    lv_style_set_border_width(&st_icon, 0);
    lv_style_set_pad_all(&st_icon, 3);

    /* 大数值 */
    lv_style_init(&st_big);
    lv_style_set_text_color(&st_big, UI_C_TEXT);
    lv_style_set_text_font(&st_big, &lv_font_montserrat_24);

    /* 中等 */
    lv_style_init(&st_mid);
    lv_style_set_text_color(&st_mid, UI_C_TEXT);
    lv_style_set_text_font(&st_mid, &lv_font_montserrat_14);

    /* 小字 */
    lv_style_init(&st_sub);
    lv_style_set_text_color(&st_sub, UI_C_SUB);
    lv_style_set_text_font(&st_sub, &lv_font_montserrat_12);

    /* 页面 (可滚动) */
    lv_style_init(&st_page);
    lv_style_set_bg_color(&st_page, UI_C_BG);
    lv_style_set_bg_opa(&st_page, LV_OPA_COVER);
    lv_style_set_pad_top(&st_page, 4);
    lv_style_set_pad_bottom(&st_page, UI_PAD);
    lv_style_set_pad_left(&st_page, UI_PAD);
    lv_style_set_pad_right(&st_page, UI_PAD);
    lv_style_set_pad_gap(&st_page, 6);
}

/* ==================== 卡片工厂 ==================== */

/**
 * 传感器卡片 (半宽): 图标 + 名称 + 大数值
 * 返回数值 label
 */
static lv_obj_t *_card(lv_obj_t *p,
                       const char *sym,
                       const char *name,
                       const char *tag,
                       const char *val, lv_color_t ic)
{
    // lv_obj_t *c = lv_obj_create(p);
    // lv_obj_add_style(c, &st_card, 0);
    // lv_obj_set_size(c, LV_PCT(100), LV_SIZE_CONTENT);
    // lv_obj_set_flex_flow(c, LV_FLEX_FLOW_COLUMN);
    // lv_obj_set_style_pad_gap(c, 2, 0);
    // lv_obj_clear_flag(c, LV_OBJ_FLAG_SCROLLABLE);

    // /* 图标 */
    // lv_obj_t *ib = lv_obj_create(c);
    // lv_obj_add_style(ib, &st_icon, 0);
    // lv_obj_set_size(ib, 26, 26);
    // lv_obj_set_style_bg_color(ib, ic, 0);
    // lv_obj_clear_flag(ib, LV_OBJ_FLAG_SCROLLABLE);
    // lv_obj_t *il = lv_label_create(ib);
    // lv_label_set_text(il, sym);
    // lv_obj_center(il);

    // /* 名称 */
    // lv_obj_t *n = lv_label_create(c);
    // lv_label_set_text(n, name);
    // lv_obj_add_style(n, &st_sub, 0);

    // /* 数值 */
    // lv_obj_t *v = lv_label_create(c);
    // lv_label_set_text(v, val);
    // lv_obj_add_style(v, &st_big, 0);

    // 传感器卡片
    lv_obj_t *screen_sensor_dock_card = lv_obj_create(p);
    lv_obj_set_size(screen_sensor_dock_card, 360, 120);
    lv_obj_set_scrollbar_mode(screen_sensor_dock_card, LV_SCROLLBAR_MODE_OFF);

    // Write style for screen_sensor_dock_card, Part: LV_PART_MAIN, State: LV_STATE_DEFAULT.
    lv_obj_set_style_border_width(screen_sensor_dock_card, 8, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_border_opa(screen_sensor_dock_card, 218, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_border_color(screen_sensor_dock_card, ic, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_border_side(screen_sensor_dock_card, LV_BORDER_SIDE_LEFT, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_radius(screen_sensor_dock_card, 16, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(screen_sensor_dock_card, 230, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_color(screen_sensor_dock_card, lv_color_hex(0xFFFFFF), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_grad_dir(screen_sensor_dock_card, LV_GRAD_DIR_NONE, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_top(screen_sensor_dock_card, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_bottom(screen_sensor_dock_card, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_left(screen_sensor_dock_card, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_right(screen_sensor_dock_card, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_width(screen_sensor_dock_card, 1, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_color(screen_sensor_dock_card, lv_color_hex(0xffffff), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_opa(screen_sensor_dock_card, 79, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_spread(screen_sensor_dock_card, 1, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_ofs_x(screen_sensor_dock_card, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_ofs_y(screen_sensor_dock_card, 0, LV_PART_MAIN | LV_STATE_DEFAULT);

    // 传感器名字
    lv_obj_t *screen_sensor_name_lb = lv_label_create(screen_sensor_dock_card);
    lv_label_set_text(screen_sensor_name_lb, name);
    lv_label_set_long_mode(screen_sensor_name_lb, LV_LABEL_LONG_WRAP);
    lv_obj_set_pos(screen_sensor_name_lb, 0, 10);
    lv_obj_set_size(screen_sensor_name_lb, 200, 42);

    // Write style for screen_sensor_name_lb, Part: LV_PART_MAIN, State: LV_STATE_DEFAULT.
    lv_obj_set_style_border_width(screen_sensor_name_lb, 6, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_border_opa(screen_sensor_name_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_border_color(screen_sensor_name_lb, lv_color_hex(0xff4757), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_border_side(screen_sensor_name_lb, LV_BORDER_SIDE_LEFT, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_radius(screen_sensor_name_lb, 16, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_color(screen_sensor_name_lb, lv_color_hex(0x57606f), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(screen_sensor_name_lb, &lv_customer_font_PingFangSC_Regular_32, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_opa(screen_sensor_name_lb, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_letter_space(screen_sensor_name_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_line_space(screen_sensor_name_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_align(screen_sensor_name_lb, LV_TEXT_ALIGN_CENTER, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(screen_sensor_name_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_top(screen_sensor_name_lb, 5, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_right(screen_sensor_name_lb, 5, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_bottom(screen_sensor_name_lb, 5, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_left(screen_sensor_name_lb, 5, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_width(screen_sensor_name_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);

    // 传感器标识
    lv_obj_t *screen_sensor_tag_lb = lv_label_create(screen_sensor_dock_card);
    lv_label_set_text(screen_sensor_tag_lb, tag);
    lv_label_set_long_mode(screen_sensor_tag_lb, LV_LABEL_LONG_WRAP);
    lv_obj_set_pos(screen_sensor_tag_lb, 220, 18);
    lv_obj_set_size(screen_sensor_tag_lb, 100, 26);

    // Write style for screen_sensor_tag_lb, Part: LV_PART_MAIN, State: LV_STATE_DEFAULT.
    lv_obj_set_style_border_width(screen_sensor_tag_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_radius(screen_sensor_tag_lb, 16, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_color(screen_sensor_tag_lb, lv_color_hex(0xa4b0be), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(screen_sensor_tag_lb, &lv_customer_font_PingFangSC_Regular_16, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_opa(screen_sensor_tag_lb, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_letter_space(screen_sensor_tag_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_line_space(screen_sensor_tag_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_align(screen_sensor_tag_lb, LV_TEXT_ALIGN_CENTER, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(screen_sensor_tag_lb, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_color(screen_sensor_tag_lb, lv_color_hex(0xf1f2f6), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_grad_dir(screen_sensor_tag_lb, LV_GRAD_DIR_NONE, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_top(screen_sensor_tag_lb, 5, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_right(screen_sensor_tag_lb, 5, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_bottom(screen_sensor_tag_lb, 5, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_left(screen_sensor_tag_lb, 5, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_width(screen_sensor_tag_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);

    // 传感器数值
    // Write codes screen_sensor_value_lb
    lv_obj_t *screen_sensor_value_lb = lv_label_create(screen_sensor_dock_card);
    lv_label_set_text(screen_sensor_value_lb, "-:-");
    lv_label_set_long_mode(screen_sensor_value_lb, LV_LABEL_LONG_WRAP);
    lv_obj_set_pos(screen_sensor_value_lb, 80, 65);
    lv_obj_set_size(screen_sensor_value_lb, 240, 32);

    // Write style for screen_sensor_value_lb, Part: LV_PART_MAIN, State: LV_STATE_DEFAULT.
    lv_obj_set_style_border_width(screen_sensor_value_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_radius(screen_sensor_value_lb, 16, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_color(screen_sensor_value_lb, lv_color_hex(0x2f3542), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(screen_sensor_value_lb, &lv_customer_font_PingFangSC_Regular_24, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_opa(screen_sensor_value_lb, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_letter_space(screen_sensor_value_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_line_space(screen_sensor_value_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_align(screen_sensor_value_lb, LV_TEXT_ALIGN_CENTER, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(screen_sensor_value_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_top(screen_sensor_value_lb, 10, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_right(screen_sensor_value_lb, 5, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_bottom(screen_sensor_value_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_left(screen_sensor_value_lb, 5, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_width(screen_sensor_value_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);

    // Write codes screen_sensor_icon_lb
    lv_obj_t *screen_sensor_icon_lb = lv_label_create(screen_sensor_dock_card);
    lv_label_set_text(screen_sensor_icon_lb, sym);
    lv_label_set_long_mode(screen_sensor_icon_lb, LV_LABEL_LONG_WRAP);
    lv_obj_set_pos(screen_sensor_icon_lb, 20, 55);
    lv_obj_set_size(screen_sensor_icon_lb, 48, 48);

    // Write style for screen_sensor_icon_lb, Part: LV_PART_MAIN, State: LV_STATE_DEFAULT.
    lv_obj_set_style_border_width(screen_sensor_icon_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_radius(screen_sensor_icon_lb, 8, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_color(screen_sensor_icon_lb, lv_color_hex(0x000000), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(screen_sensor_icon_lb, &lv_font_montserrat_34, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_opa(screen_sensor_icon_lb, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_letter_space(screen_sensor_icon_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_line_space(screen_sensor_icon_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_align(screen_sensor_icon_lb, LV_TEXT_ALIGN_CENTER, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(screen_sensor_icon_lb, 227, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_color(screen_sensor_icon_lb, lv_color_hex(0xf1f2f6), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_grad_dir(screen_sensor_icon_lb, LV_GRAD_DIR_NONE, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_top(screen_sensor_icon_lb, 4, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_right(screen_sensor_icon_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_bottom(screen_sensor_icon_lb, 4, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_left(screen_sensor_icon_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_width(screen_sensor_icon_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);

    return screen_sensor_value_lb;
}

/**
 * Relay 只读状态卡片 (半宽): 图标 + 名称 + ON/OFF
 * 返回状态 label
 */
static lv_obj_t *_card_relay(lv_obj_t *p,
                             const char *sym,
                             const char *name,
                             const char *tag,
                             lv_color_t ic)
{
    // lv_obj_t *c = lv_obj_create(p);
    // lv_obj_add_style(c, &st_card, 0);
    // lv_obj_set_size(c, LV_PCT(46), LV_SIZE_CONTENT);
    // lv_obj_set_flex_flow(c, LV_FLEX_FLOW_COLUMN);
    // lv_obj_set_style_pad_gap(c, 2, 0);
    // lv_obj_clear_flag(c, LV_OBJ_FLAG_SCROLLABLE);

    // /* 图标 */
    // lv_obj_t *ib = lv_obj_create(c);
    // lv_obj_add_style(ib, &st_icon, 0);
    // lv_obj_set_size(ib, 26, 26);
    // lv_obj_set_style_bg_color(ib, ic, 0);
    // lv_obj_clear_flag(ib, LV_OBJ_FLAG_SCROLLABLE);
    // lv_obj_t *il = lv_label_create(ib);
    // lv_label_set_text(il, sym);
    // lv_obj_center(il);

    // /* 名称 */
    // lv_obj_t *n = lv_label_create(c);
    // lv_label_set_text(n, name);
    // lv_obj_add_style(n, &st_sub, 0);
    // lv_obj_set_style_text_font(n, &lv_customer_font_PingFangSC_Regular_16, 0);

    // /* 状态 */
    // lv_obj_t *v = lv_label_create(c);
    // lv_label_set_text(v, "OFF");
    // lv_obj_add_style(v, &st_big, 0);
    // lv_obj_set_style_text_font(v, &lv_customer_font_PingFangSC_Regular_24, 0);
    // lv_obj_set_style_text_color(v, UI_C_SUB, 0);

    // Write codes crad_relay_dock_card
    lv_obj_t *crad_relay_dock_card = lv_obj_create(p);
    lv_obj_set_size(crad_relay_dock_card, 180, 120);
    lv_obj_set_scrollbar_mode(crad_relay_dock_card, LV_SCROLLBAR_MODE_OFF);

    // Write style for crad_relay_dock_card, Part: LV_PART_MAIN, State: LV_STATE_DEFAULT.
    lv_obj_set_style_border_width(crad_relay_dock_card, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_radius(crad_relay_dock_card, 16, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(crad_relay_dock_card, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_color(crad_relay_dock_card, lv_color_hex(0xFFFFFF), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_grad_dir(crad_relay_dock_card, LV_GRAD_DIR_NONE, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_top(crad_relay_dock_card, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_bottom(crad_relay_dock_card, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_left(crad_relay_dock_card, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_right(crad_relay_dock_card, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_width(crad_relay_dock_card, 1, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_color(crad_relay_dock_card, lv_color_hex(0xf1f2f6), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_opa(crad_relay_dock_card, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_spread(crad_relay_dock_card, 2, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_ofs_x(crad_relay_dock_card, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_ofs_y(crad_relay_dock_card, 0, LV_PART_MAIN | LV_STATE_DEFAULT);

    // Write codes crad_relay_name_lb
    lv_obj_t *crad_relay_name_lb = lv_label_create(crad_relay_dock_card);
    lv_label_set_text(crad_relay_name_lb, name);
    lv_label_set_long_mode(crad_relay_name_lb, LV_LABEL_LONG_WRAP);
    lv_obj_set_pos(crad_relay_name_lb, 0, 5);
    lv_obj_set_size(crad_relay_name_lb, 180, 42);

    // Write style for crad_relay_name_lb, Part: LV_PART_MAIN, State: LV_STATE_DEFAULT.
    lv_obj_set_style_border_width(crad_relay_name_lb, 6, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_border_opa(crad_relay_name_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_border_color(crad_relay_name_lb, lv_color_hex(0xff4757), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_border_side(crad_relay_name_lb, LV_BORDER_SIDE_LEFT, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_radius(crad_relay_name_lb, 16, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_color(crad_relay_name_lb, lv_color_hex(0x57606f), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(crad_relay_name_lb, &lv_customer_font_PingFangSC_Regular_32, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_opa(crad_relay_name_lb, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_letter_space(crad_relay_name_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_line_space(crad_relay_name_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_align(crad_relay_name_lb, LV_TEXT_ALIGN_CENTER, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(crad_relay_name_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_top(crad_relay_name_lb, 5, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_right(crad_relay_name_lb, 5, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_bottom(crad_relay_name_lb, 5, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_left(crad_relay_name_lb, 5, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_width(crad_relay_name_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);

    // Write codes crad_relay_tag_lb
    lv_obj_t *crad_relay_tag_lb = lv_label_create(crad_relay_dock_card);
    lv_label_set_text(crad_relay_tag_lb, tag);
    lv_label_set_long_mode(crad_relay_tag_lb, LV_LABEL_LONG_WRAP);
    lv_obj_set_pos(crad_relay_tag_lb, 75, 55);
    lv_obj_set_size(crad_relay_tag_lb, 100, 26);

    // Write style for crad_relay_tag_lb, Part: LV_PART_MAIN, State: LV_STATE_DEFAULT.
    lv_obj_set_style_border_width(crad_relay_tag_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_radius(crad_relay_tag_lb, 16, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_color(crad_relay_tag_lb, lv_color_hex(0xa4b0be), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(crad_relay_tag_lb, &lv_customer_font_PingFangSC_Regular_16, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_opa(crad_relay_tag_lb, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_letter_space(crad_relay_tag_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_line_space(crad_relay_tag_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_align(crad_relay_tag_lb, LV_TEXT_ALIGN_CENTER, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(crad_relay_tag_lb, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_color(crad_relay_tag_lb, lv_color_hex(0xf1f2f6), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_grad_dir(crad_relay_tag_lb, LV_GRAD_DIR_NONE, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_top(crad_relay_tag_lb, 5, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_right(crad_relay_tag_lb, 5, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_bottom(crad_relay_tag_lb, 5, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_left(crad_relay_tag_lb, 5, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_width(crad_relay_tag_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);

    // Write codes crad_relay_value_lb
    lv_obj_t *crad_relay_value_lb = lv_label_create(crad_relay_dock_card);
    lv_label_set_text(crad_relay_value_lb, "OFF");
    lv_label_set_long_mode(crad_relay_value_lb, LV_LABEL_LONG_WRAP);
    lv_obj_set_pos(crad_relay_value_lb, 85, 90);
    lv_obj_set_size(crad_relay_value_lb, 80, 24);

    // Write style for crad_relay_value_lb, Part: LV_PART_MAIN, State: LV_STATE_DEFAULT.
    lv_obj_set_style_border_width(crad_relay_value_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_radius(crad_relay_value_lb, 16, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_color(crad_relay_value_lb, lv_color_hex(0x000000), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(crad_relay_value_lb, &lv_customer_font_PingFangSC_Regular_24, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_opa(crad_relay_value_lb, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_letter_space(crad_relay_value_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_line_space(crad_relay_value_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_align(crad_relay_value_lb, LV_TEXT_ALIGN_CENTER, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(crad_relay_value_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_top(crad_relay_value_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_right(crad_relay_value_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_bottom(crad_relay_value_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_left(crad_relay_value_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_width(crad_relay_value_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);

    // Write codes crad_relay_icon_lb
    lv_obj_t *crad_relay_icon_lb = lv_label_create(crad_relay_dock_card);
    lv_label_set_text(crad_relay_icon_lb, sym);
    lv_label_set_long_mode(crad_relay_icon_lb, LV_LABEL_LONG_WRAP);
    lv_obj_set_pos(crad_relay_icon_lb, 20, 60);
    lv_obj_set_size(crad_relay_icon_lb, 44, 44);

    // Write style for crad_relay_icon_lb, Part: LV_PART_MAIN, State: LV_STATE_DEFAULT.
    lv_obj_set_style_border_width(crad_relay_icon_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_radius(crad_relay_icon_lb, 16, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_color(crad_relay_icon_lb, lv_color_hex(0x000000), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(crad_relay_icon_lb, &lv_font_montserrat_32, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_opa(crad_relay_icon_lb, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_letter_space(crad_relay_icon_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_line_space(crad_relay_icon_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_align(crad_relay_icon_lb, LV_TEXT_ALIGN_CENTER, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(crad_relay_icon_lb, 227, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_color(crad_relay_icon_lb, ic, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_grad_dir(crad_relay_icon_lb, LV_GRAD_DIR_NONE, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_top(crad_relay_icon_lb, 8, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_right(crad_relay_icon_lb, 4, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_bottom(crad_relay_icon_lb, 4, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_left(crad_relay_icon_lb, 4, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_width(crad_relay_icon_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);

    return crad_relay_value_lb;
}
static void _card_rgb(lv_obj_t *p)
{
    // Write codes screen_rgb_dock_crad
    lv_obj_t *screen_rgb_dock_crad = lv_obj_create(p);
    lv_obj_set_pos(screen_rgb_dock_crad, 15, 300);
    lv_obj_set_size(screen_rgb_dock_crad, 360, 120);
    lv_obj_set_scrollbar_mode(screen_rgb_dock_crad, LV_SCROLLBAR_MODE_OFF);

    // Write style for screen_rgb_dock_crad, Part: LV_PART_MAIN, State: LV_STATE_DEFAULT.
    lv_obj_set_style_border_width(screen_rgb_dock_crad, 8, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_border_opa(screen_rgb_dock_crad, 218, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_border_color(screen_rgb_dock_crad, lv_color_hex(0xff6348), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_border_side(screen_rgb_dock_crad, LV_BORDER_SIDE_LEFT, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_radius(screen_rgb_dock_crad, 16, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(screen_rgb_dock_crad, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_color(screen_rgb_dock_crad, lv_color_hex(0xF5FAF0), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_grad_dir(screen_rgb_dock_crad, LV_GRAD_DIR_NONE, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_top(screen_rgb_dock_crad, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_bottom(screen_rgb_dock_crad, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_left(screen_rgb_dock_crad, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_right(screen_rgb_dock_crad, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_width(screen_rgb_dock_crad, 1, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_color(screen_rgb_dock_crad, lv_color_hex(0xffffff), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_opa(screen_rgb_dock_crad, 79, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_spread(screen_rgb_dock_crad, 1, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_ofs_x(screen_rgb_dock_crad, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_ofs_y(screen_rgb_dock_crad, 0, LV_PART_MAIN | LV_STATE_DEFAULT);

    // Write codes screen_rgb_color_lb
    lv_obj_t *screen_rgb_color_lb = lv_label_create(screen_rgb_dock_crad);
    lv_label_set_text(screen_rgb_color_lb, "");
    lv_label_set_long_mode(screen_rgb_color_lb, LV_LABEL_LONG_WRAP);
    lv_obj_set_pos(screen_rgb_color_lb, 260, 40);
    lv_obj_set_size(screen_rgb_color_lb, 60, 60);

    // Write style for screen_rgb_color_lb, Part: LV_PART_MAIN, State: LV_STATE_DEFAULT.
    lv_obj_set_style_border_width(screen_rgb_color_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_radius(screen_rgb_color_lb, 16, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_color(screen_rgb_color_lb, lv_color_hex(0x000000), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(screen_rgb_color_lb, &lv_customer_font_PingFangSC_Regular_16, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_opa(screen_rgb_color_lb, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_letter_space(screen_rgb_color_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_line_space(screen_rgb_color_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_align(screen_rgb_color_lb, LV_TEXT_ALIGN_CENTER, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(screen_rgb_color_lb, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_color(screen_rgb_color_lb, lv_color_hex(0x000000), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_grad_dir(screen_rgb_color_lb, LV_GRAD_DIR_NONE, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_top(screen_rgb_color_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_right(screen_rgb_color_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_bottom(screen_rgb_color_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_left(screen_rgb_color_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_width(screen_rgb_color_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);

    // Write codes screen_rgb_name_lb
    lv_obj_t *screen_rgb_name_lb = lv_label_create(screen_rgb_dock_crad);
    lv_label_set_text(screen_rgb_name_lb, "RGB LED");
    lv_label_set_long_mode(screen_rgb_name_lb, LV_LABEL_LONG_WRAP);
    lv_obj_set_pos(screen_rgb_name_lb, 0, 10);
    lv_obj_set_size(screen_rgb_name_lb, 200, 42);

    // Write style for screen_rgb_name_lb, Part: LV_PART_MAIN, State: LV_STATE_DEFAULT.
    lv_obj_set_style_border_width(screen_rgb_name_lb, 6, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_border_opa(screen_rgb_name_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_border_color(screen_rgb_name_lb, lv_color_hex(0xff4757), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_border_side(screen_rgb_name_lb, LV_BORDER_SIDE_LEFT, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_radius(screen_rgb_name_lb, 16, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_color(screen_rgb_name_lb, lv_color_hex(0x57606f), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(screen_rgb_name_lb, &lv_customer_font_PingFangSC_Regular_32, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_opa(screen_rgb_name_lb, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_letter_space(screen_rgb_name_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_line_space(screen_rgb_name_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_align(screen_rgb_name_lb, LV_TEXT_ALIGN_CENTER, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(screen_rgb_name_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_top(screen_rgb_name_lb, 5, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_right(screen_rgb_name_lb, 5, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_bottom(screen_rgb_name_lb, 5, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_left(screen_rgb_name_lb, 5, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_width(screen_rgb_name_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);

    // Write codes screen_rgb_value_lb
    lv_obj_t *screen_rgb_value_lb = lv_label_create(screen_rgb_dock_crad);
    lv_label_set_text(screen_rgb_value_lb, "R:0 G:0 B:0");
    lv_label_set_long_mode(screen_rgb_value_lb, LV_LABEL_LONG_WRAP);
    lv_obj_set_pos(screen_rgb_value_lb, 40, 70);
    lv_obj_set_size(screen_rgb_value_lb, 180, 26);

    // Write style for screen_rgb_value_lb, Part: LV_PART_MAIN, State: LV_STATE_DEFAULT.
    lv_obj_set_style_border_width(screen_rgb_value_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_radius(screen_rgb_value_lb, 16, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_color(screen_rgb_value_lb, lv_color_hex(0x2f3542), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(screen_rgb_value_lb, &lv_customer_font_PingFangSC_Regular_16, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_opa(screen_rgb_value_lb, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_letter_space(screen_rgb_value_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_line_space(screen_rgb_value_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_align(screen_rgb_value_lb, LV_TEXT_ALIGN_CENTER, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(screen_rgb_value_lb, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_color(screen_rgb_value_lb, lv_color_hex(0xf1f2f6), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_grad_dir(screen_rgb_value_lb, LV_GRAD_DIR_NONE, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_top(screen_rgb_value_lb, 5, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_right(screen_rgb_value_lb, 5, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_bottom(screen_rgb_value_lb, 5, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_left(screen_rgb_value_lb, 5, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_width(screen_rgb_value_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);

    g_ui.lbl_rgb = screen_rgb_value_lb;
    g_ui.obj_rgb_preview = screen_rgb_color_lb;
}

/**
 * 信息行 (全宽): 标题 ... 数值
 */
static lv_obj_t *_card_row(lv_obj_t *p, const char *title, const char *val)
{
    lv_obj_t *c = lv_obj_create(p);
    lv_obj_add_style(c, &st_card, 0);
    lv_obj_set_width(c, LV_PCT(92));
    lv_obj_set_height(c, LV_SIZE_CONTENT);
    lv_obj_set_flex_flow(c, LV_FLEX_FLOW_ROW);
    lv_obj_set_flex_align(c, LV_FLEX_ALIGN_SPACE_BETWEEN,
                          LV_FLEX_ALIGN_CENTER, LV_FLEX_ALIGN_CENTER);
    lv_obj_clear_flag(c, LV_OBJ_FLAG_SCROLLABLE);

    lv_obj_t *t = lv_label_create(c);
    lv_label_set_text(t, title);
    lv_obj_add_style(t, &st_sub, 0);

    lv_obj_t *v = lv_label_create(c);
    lv_label_set_text(v, val);
    lv_obj_add_style(v, &st_mid, 0);
    lv_obj_set_style_text_font(v, &lv_customer_font_PingFangSC_Regular_16, 0);
    return v;
}

/* ==================== 更新 relay label 的辅助 ==================== */
static void _set_relay(lv_obj_t *lbl, int val)
{
    if (val)
    {
        lv_label_set_text(lbl, "ON");
        lv_obj_set_style_text_color(lbl, UI_C_GREEN, 0);
    }
    else
    {
        lv_label_set_text(lbl, "OFF");
        lv_obj_set_style_text_color(lbl, UI_C_SUB, 0);
    }
}

/* ==================== Tab1: Sensor (15 卡片, 可滚动) ==================== */
static void _tab_sensor(lv_obj_t *tab)
{
    lv_obj_add_style(tab, &st_page, 0);
    lv_obj_set_scrollbar_mode(tab, LV_SCROLLBAR_MODE_OFF);
    lv_obj_set_flex_flow(tab, LV_FLEX_FLOW_COLUMN);
    lv_obj_set_flex_align(tab, LV_FLEX_ALIGN_START,
                          LV_FLEX_ALIGN_CENTER, LV_FLEX_ALIGN_CENTER);
    lv_obj_set_style_pad_row(tab, 10, 0);

    /* Tab 内容默认可滚动, 不需要额外设置 */

    g_ui.lbl_tp = _card(tab, LV_SYMBOL_WARNING, "温度", "Temp", "--", UI_C_RED);
    g_ui.lbl_hm = _card(tab, LV_SYMBOL_TINT, "湿度", "Humidity", "--", UI_C_BLUE);
    g_ui.lbl_l = _card(tab, LV_SYMBOL_IMAGE, "光照", "Light", "--", UI_C_ORANGE);
    g_ui.lbl_vt = _card(tab, LV_SYMBOL_SHUFFLE, "震动", "Vibrate", "--", UI_C_PURPLE);
    g_ui.lbl_dp = _card(tab, LV_SYMBOL_REFRESH, "倾斜", "Tilt", "--", UI_C_TEAL);
    g_ui.lbl_pr = _card(tab, LV_SYMBOL_DOWNLOAD, "气压", "Pressure", "--", UI_C_BROWN);
    g_ui.lbl_al = _card(tab, LV_SYMBOL_UP, "高度", "Altitude", "--", UI_C_GREEN);
    g_ui.lbl_madc = _card(tab, LV_SYMBOL_BELL, "气体浓度", "Gas", "--", UI_C_ORANGE);
    g_ui.lbl_mdi = _card(tab, LV_SYMBOL_LIST, "气体阈值", "Gas Thr", "--", UI_C_GREY);
    g_ui.lbl_fd = _card(tab, LV_SYMBOL_TINT, "水浸", "Water", "--", UI_C_BLUE);
    g_ui.lbl_aX = _card(tab, LV_SYMBOL_RIGHT, "X轴", "Axis X", "--", UI_C_RED);
    g_ui.lbl_aY = _card(tab, LV_SYMBOL_RIGHT, "Y轴", "Axis Y", "--", UI_C_GREEN);
    g_ui.lbl_aZ = _card(tab, LV_SYMBOL_RIGHT, "Z轴", "Axis Z", "--", UI_C_BLUE);
    g_ui.lbl_rl = _card(tab, LV_SYMBOL_LOOP, "横滚角", "Roll", "--", UI_C_PINK);
    g_ui.lbl_pc = _card(tab, LV_SYMBOL_LOOP, "俯仰角", "Pitch", "--", UI_C_TEAL);
}

/* ==================== Tab2: Relay (只读) + RGB ==================== */
static void _tab_relay(lv_obj_t *tab)
{
    lv_obj_add_style(tab, &st_page, 0);
    lv_obj_set_scrollbar_mode(tab, LV_SCROLLBAR_MODE_OFF);
    lv_obj_set_flex_flow(tab, LV_FLEX_FLOW_ROW_WRAP);
    lv_obj_set_flex_align(tab, LV_FLEX_ALIGN_SPACE_EVENLY,
                          LV_FLEX_ALIGN_START, LV_FLEX_ALIGN_START);
    lv_obj_set_style_pad_row(tab, 10, 0);

    /* 5 个 relay 只读卡片 */
    g_ui.lbl_r1 = _card_relay(tab, LV_SYMBOL_CHARGE, "继电器1", "R_1", UI_C_YELLOW);
    g_ui.lbl_r2 = _card_relay(tab, LV_SYMBOL_CHARGE, "继电器2", "R_2", UI_C_BLUE);
    g_ui.lbl_r3 = _card_relay(tab, LV_SYMBOL_POWER, "继电器3", "R_3", UI_C_GREEN);
    g_ui.lbl_r4 = _card_relay(tab, LV_SYMBOL_POWER, "继电器4", "R_4", UI_C_PURPLE);
    g_ui.lbl_bz = _card_relay(tab, LV_SYMBOL_BELL, "蜂鸣器", "Buzzer", UI_C_ORANGE);

    // /* RGB 全宽卡片: 色块 + 数值 */
    // lv_obj_t *rc = lv_obj_create(tab);
    // lv_obj_add_style(rc, &st_card, 0);
    // lv_obj_set_width(rc, LV_PCT(100));
    // lv_obj_set_height(rc, LV_SIZE_CONTENT);
    // lv_obj_set_flex_flow(rc, LV_FLEX_FLOW_ROW);
    // lv_obj_set_flex_align(rc, LV_FLEX_ALIGN_START,
    //                       LV_FLEX_ALIGN_CENTER, LV_FLEX_ALIGN_CENTER);
    // lv_obj_set_style_pad_gap(rc, 12, 0);
    // lv_obj_clear_flag(rc, LV_OBJ_FLAG_SCROLLABLE);

    // /* 色块 */
    // g_ui.obj_rgb_preview = lv_obj_create(rc);
    // lv_obj_set_size(g_ui.obj_rgb_preview, 40, 40);
    // lv_obj_set_style_radius(g_ui.obj_rgb_preview, 10, 0);
    // lv_obj_set_style_bg_color(g_ui.obj_rgb_preview, lv_color_black(), 0);
    // lv_obj_set_style_bg_opa(g_ui.obj_rgb_preview, LV_OPA_COVER, 0);
    // lv_obj_set_style_border_width(g_ui.obj_rgb_preview, 2, 0);
    // lv_obj_set_style_border_color(g_ui.obj_rgb_preview, UI_C_CARD_BD, 0);
    // lv_obj_clear_flag(g_ui.obj_rgb_preview, LV_OBJ_FLAG_SCROLLABLE);

    // /* 文字列 */
    // lv_obj_t *col = lv_obj_create(rc);
    // lv_obj_set_size(col, LV_SIZE_CONTENT, LV_SIZE_CONTENT);
    // lv_obj_set_flex_flow(col, LV_FLEX_FLOW_COLUMN);
    // lv_obj_set_style_pad_all(col, 0, 0);
    // lv_obj_set_style_bg_opa(col, LV_OPA_TRANSP, 0);
    // lv_obj_set_style_border_width(col, 0, 0);
    // lv_obj_clear_flag(col, LV_OBJ_FLAG_SCROLLABLE);

    // lv_obj_t *rt = lv_label_create(col);
    // lv_label_set_text(rt, LV_SYMBOL_IMAGE " RGB LED");
    // lv_obj_add_style(rt, &st_sub, 0);

    // g_ui.lbl_rgb = lv_label_create(col);
    // lv_label_set_text(g_ui.lbl_rgb, "R:0  G:0  B:0");
    // lv_obj_add_style(g_ui.lbl_rgb, &st_mid, 0);
}

void _tab_rgb(lv_obj_t *tab)
{
    lv_obj_add_style(tab, &st_page, 0);
    lv_obj_set_scrollbar_mode(tab, LV_SCROLLBAR_MODE_OFF);
    lv_obj_set_flex_flow(tab, LV_FLEX_FLOW_COLUMN);
    lv_obj_set_style_pad_gap(tab, 10, 0);

    _card_rgb(tab);
}

/* ==================== Tab3: Device ==================== */
static void _tab_device(lv_obj_t *tab)
{
    lv_obj_add_style(tab, &st_page, 0);
    lv_obj_set_scrollbar_mode(tab, LV_SCROLLBAR_MODE_OFF);
    lv_obj_set_flex_flow(tab, LV_FLEX_FLOW_COLUMN);
    lv_obj_set_flex_align(tab, LV_FLEX_ALIGN_START,
                          LV_FLEX_ALIGN_CENTER, LV_FLEX_ALIGN_CENTER);
    lv_obj_set_style_pad_gap(tab, 10, 0);

    // Write codes dev_crad
    lv_obj_t *dev_crad = lv_obj_create(tab);
    lv_obj_set_size(dev_crad, 360, 160);
    lv_obj_set_scrollbar_mode(dev_crad, LV_SCROLLBAR_MODE_OFF);

    // Write style for dev_crad, Part: LV_PART_MAIN, State: LV_STATE_DEFAULT.
    lv_obj_set_style_border_width(dev_crad, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_radius(dev_crad, 16, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(dev_crad, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_color(dev_crad, lv_color_hex(0x2f3542), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_grad_dir(dev_crad, LV_GRAD_DIR_NONE, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_top(dev_crad, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_bottom(dev_crad, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_left(dev_crad, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_right(dev_crad, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_width(dev_crad, 2, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_color(dev_crad, lv_color_hex(0xF5FAF0), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_opa(dev_crad, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_spread(dev_crad, 2, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_ofs_x(dev_crad, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_ofs_y(dev_crad, 0, LV_PART_MAIN | LV_STATE_DEFAULT);

    // Write codes dev_icon_ig
    lv_obj_t *dev_icon_ig = lv_img_create(dev_crad);
    lv_obj_add_flag(dev_icon_ig, LV_OBJ_FLAG_CLICKABLE);
    lv_img_set_src(dev_icon_ig, &_dev_info_alpha_100x100);
    lv_img_set_pivot(dev_icon_ig, 50, 50);
    lv_img_set_angle(dev_icon_ig, 0);
    lv_obj_set_pos(dev_icon_ig, 30, 30);
    lv_obj_set_size(dev_icon_ig, 100, 100);

    // Write style for dev_icon_ig, Part: LV_PART_MAIN, State: LV_STATE_DEFAULT.
    lv_obj_set_style_img_recolor_opa(dev_icon_ig, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_img_opa(dev_icon_ig, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_radius(dev_icon_ig, 6, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_clip_corner(dev_icon_ig, true, LV_PART_MAIN | LV_STATE_DEFAULT);

    // Write codes dev_title_lb
    lv_obj_t *dev_title_lb = lv_label_create(dev_crad);
    lv_label_set_text(dev_title_lb, "设备信息");
    lv_label_set_long_mode(dev_title_lb, LV_LABEL_LONG_WRAP);
    lv_obj_set_pos(dev_title_lb, 160, 64);
    lv_obj_set_size(dev_title_lb, 156, 32);

    // Write style for dev_title_lb, Part: LV_PART_MAIN, State: LV_STATE_DEFAULT.
    lv_obj_set_style_border_width(dev_title_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_radius(dev_title_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_color(dev_title_lb, lv_color_hex(0xffffff), LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_font(dev_title_lb, &lv_customer_font_PingFangSC_Regular_32, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_opa(dev_title_lb, 255, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_letter_space(dev_title_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_line_space(dev_title_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_text_align(dev_title_lb, LV_TEXT_ALIGN_CENTER, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_bg_opa(dev_title_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_top(dev_title_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_right(dev_title_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_bottom(dev_title_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_pad_left(dev_title_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);
    lv_obj_set_style_shadow_width(dev_title_lb, 0, LV_PART_MAIN | LV_STATE_DEFAULT);

    g_ui.lbl_id = _card_row(tab, LV_SYMBOL_WIFI " ID", "--");
    g_ui.lbl_cmd = _card_row(tab, LV_SYMBOL_RIGHT " CMD", "--");
    g_ui.lbl_time = _card_row(tab, LV_SYMBOL_EYE_OPEN " Updated", "--");
    g_ui.lbl_conn = _card_row(tab, LV_SYMBOL_OK " Status", "N/A");
}
/* 顶栏拖动转发给下拉面板 */
static void _hdr_drag_event(lv_event_t *e)
{
    lv_event_code_t code = lv_event_get_code(e);

    if (code == LV_EVENT_PRESSING)
    {
        lv_point_t vect;
        lv_indev_get_vect(lv_indev_get_act(), &vect);
        if (vect.y > 0)
        { /* 只响应下拉 */
            lv_coord_t y = lv_obj_get_y(g_ui.panel_dropdown) + vect.y;
            if (y > 0)
                y = 0;
            lv_obj_set_y(g_ui.panel_dropdown, y);
        }
    }
    else if (code == LV_EVENT_RELEASED)
    {
        lv_coord_t y = lv_obj_get_y(g_ui.panel_dropdown);
        lv_coord_t target = (y > -DROP_PANEL_H / 3) ? 0 : -DROP_PANEL_H;

        lv_anim_t a;
        lv_anim_init(&a);
        lv_anim_set_var(&a, g_ui.panel_dropdown);
        lv_anim_set_values(&a, y, target);
        lv_anim_set_time(&a, 200);
        lv_anim_set_exec_cb(&a, (lv_anim_exec_xcb_t)lv_obj_set_y);
        lv_anim_set_path_cb(&a, lv_anim_path_ease_out);
        lv_anim_start(&a);
    }
}

/* ==================== 公开接口 ==================== */

void ui_init(ui_switch_cb_t cb)
{
    g_sw_cb = cb;
    memset(&g_ui, 0, sizeof(g_ui));
    _init_styles();

    lv_obj_set_style_bg_color(lv_scr_act(), UI_C_BG, 0);
    lv_obj_set_style_bg_opa(lv_scr_act(), LV_OPA_COVER, 0);

    /* 顶栏 */
    lv_obj_t *hdr = lv_obj_create(lv_scr_act());
    lv_obj_set_size(hdr, UI_SCR_W, UI_HDR_H);
    lv_obj_set_pos(hdr, 0, 0);
    lv_obj_set_flex_flow(hdr, LV_FLEX_FLOW_ROW);
    lv_obj_set_flex_align(hdr, LV_FLEX_ALIGN_SPACE_BETWEEN,
                          LV_FLEX_ALIGN_CENTER, LV_FLEX_ALIGN_CENTER);
    lv_obj_set_style_bg_color(hdr, UI_C_GREEN, 0);
    lv_obj_set_style_bg_opa(hdr, LV_OPA_COVER, 0);
    lv_obj_set_style_radius(hdr, 0, 0);
    lv_obj_set_style_border_width(hdr, 0, 0);
    lv_obj_set_style_pad_left(hdr, UI_PAD + 45, 0);
    lv_obj_set_style_pad_right(hdr, UI_PAD + 45, 0);
    lv_obj_clear_flag(hdr, LV_OBJ_FLAG_SCROLLABLE);

    // g_ui.lbl_title = lv_label_create(hdr);
    // lv_label_set_text(g_ui.lbl_title, "首页");
    // lv_obj_set_style_text_color(g_ui.lbl_title, lv_color_white(), 0);
    // lv_obj_set_style_text_font(g_ui.lbl_title, &lv_customer_font_PingFangSC_Regular_16, 0);

    g_ui.lbl_status = lv_label_create(hdr);
    lv_label_set_text(g_ui.lbl_status, "BLE: " LV_SYMBOL_CLOSE);
    lv_obj_set_style_text_color(g_ui.lbl_status, lv_color_hex(0xFFCDD2), 0);

    g_ui.lbl_wifi_status = lv_label_create(hdr);
    lv_label_set_text(g_ui.lbl_wifi_status, "Wi-Fi: " LV_SYMBOL_CLOSE);
    lv_obj_set_style_text_color(g_ui.lbl_wifi_status, lv_color_hex(0xFFCDD2), 0);

    g_ui.lbl_mqtt_status = lv_label_create(hdr);
    lv_label_set_text(g_ui.lbl_mqtt_status, "MQTT: " LV_SYMBOL_CLOSE);
    lv_obj_set_style_text_color(g_ui.lbl_mqtt_status, lv_color_hex(0xFFCDD2), 0);

    g_ui.lbl_battery = lv_label_create(hdr);
    lv_label_set_text(g_ui.lbl_battery, LV_SYMBOL_BATTERY_FULL);
    lv_obj_set_style_text_color(g_ui.lbl_battery, lv_color_white(), 0);

    /* Tab */
    lv_obj_t *tv = lv_tabview_create(lv_scr_act(), LV_DIR_TOP, UI_TAB_H);
    lv_obj_set_pos(tv, 0, UI_HDR_H);
    lv_obj_set_size(tv, UI_SCR_W, UI_SCR_H - UI_HDR_H);

    lv_obj_t *btns = lv_tabview_get_tab_btns(tv);
    lv_obj_set_style_bg_color(btns, UI_C_GREEN, 0);
    lv_obj_set_style_text_color(btns, lv_color_hex(0xC8E6C9), 0);
    lv_obj_set_style_text_color(btns, lv_color_white(),
                                LV_PART_ITEMS | LV_STATE_CHECKED);
    lv_obj_set_style_text_font(btns, &lv_customer_font_PingFangSC_Regular_16, 0);

    lv_obj_t *t1 = lv_tabview_add_tab(tv, "首页");
    lv_obj_t *t2 = lv_tabview_add_tab(tv, "控制");
    lv_obj_t *t3 = lv_tabview_add_tab(tv, "RGB");
    lv_obj_t *t4 = lv_tabview_add_tab(tv, "设备");

    _tab_sensor(t1);
    _tab_relay(t2);
    _tab_rgb(t3);
    _tab_device(t4);
    _create_dropdown_panel();
    _create_loading_layer();
    _create_notice_card();
    /* 在 ui_init 创建 hdr 之后加: */
    lv_obj_add_event_cb(hdr, _hdr_drag_event, LV_EVENT_PRESSING, NULL);
    lv_obj_add_event_cb(hdr, _hdr_drag_event, LV_EVENT_RELEASED, NULL);
}
void _set_value_color(lv_obj_t *lb, int value)
{

    if (value)
    {
        lv_label_set_text(lb, "WARN");
        lv_obj_set_style_text_color(lb, UI_C_RED, 0);
    }
    else
    {
        lv_label_set_text(lb, "OK");
        lv_obj_set_style_text_color(lb, UI_C_GREEN, 0);
    }
}
void _set_connect_lb_color(lv_obj_t *lb, int value, const char *text)
{
    char tp[64];
    if (!value)
    {
        lv_snprintf(tp, sizeof(tp), "%s: " LV_SYMBOL_CLOSE, text);
        lv_label_set_text(lb, text);
        lv_obj_set_style_text_color(lb, lv_color_hex(0xFFCDD2), 0);
    }
    else
    {
        lv_snprintf(tp, sizeof(tp), "%s: " LV_SYMBOL_WIFI, text);
        lv_label_set_text(lb, tp);
        lv_obj_set_style_text_color(lb, lv_color_hex(0xC8E6C9), 0);
    }
}

void ui_update(const sensor_data_t *d)
{
    char b[32];

    /* ===== Tab1: 15 个传感器 ===== */

    lv_snprintf(b, sizeof(b), "%.1f ℃", d->tp);
    lv_label_set_text(g_ui.lbl_tp, b);
    if (d->tp > 35.0f)
        lv_obj_set_style_text_color(g_ui.lbl_tp, UI_C_RED, 0);
    else if (d->tp > 28.0f)
        lv_obj_set_style_text_color(g_ui.lbl_tp, UI_C_ORANGE, 0);
    else
        lv_obj_set_style_text_color(g_ui.lbl_tp, UI_C_TEXT, 0);

    lv_snprintf(b, sizeof(b), "%.1f %%", d->hm);
    lv_label_set_text(g_ui.lbl_hm, b);

    lv_snprintf(b, sizeof(b), "%d Lux", d->l);
    lv_label_set_text(g_ui.lbl_l, b);

    _set_value_color(g_ui.lbl_vt, d->vt);
    _set_value_color(g_ui.lbl_dp, d->dp);
    _set_value_color(g_ui.lbl_dp, d->dp);
    _set_value_color(g_ui.lbl_mdi, d->mdi);
    _set_value_color(g_ui.lbl_fd, d->fd);

    lv_snprintf(b, sizeof(b), "%.2f Pa", d->pr / 100);
    lv_label_set_text(g_ui.lbl_pr, b);

    lv_snprintf(b, sizeof(b), "%.1f m", d->al);
    lv_label_set_text(g_ui.lbl_al, b);

    lv_snprintf(b, sizeof(b), "%d%%", d->madc);
    lv_label_set_text(g_ui.lbl_madc, b);

    lv_snprintf(b, sizeof(b), "%.1f", d->aX);
    lv_label_set_text(g_ui.lbl_aX, b);

    lv_snprintf(b, sizeof(b), "%.1f", d->aY);
    lv_label_set_text(g_ui.lbl_aY, b);

    lv_snprintf(b, sizeof(b), "%.1f", d->aZ);
    lv_label_set_text(g_ui.lbl_aZ, b);

    lv_snprintf(b, sizeof(b), "%d", d->rl);
    lv_label_set_text(g_ui.lbl_rl, b);

    lv_snprintf(b, sizeof(b), "%d", d->pc);
    lv_label_set_text(g_ui.lbl_pc, b);

    /* ===== Tab2: Relay 状态 (只读) ===== */

    _set_relay(g_ui.lbl_r1, d->r_1);
    _set_relay(g_ui.lbl_r2, d->r_2);
    _set_relay(g_ui.lbl_r3, d->r_3);
    _set_relay(g_ui.lbl_r4, d->r_4);
    _set_relay(g_ui.lbl_bz, d->bz);

    /* RGB: 色块 + 数值 */
    lv_snprintf(b, sizeof(b), "R:%d  G:%d  B:%d", d->rgb_r, d->rgb_g, d->rgb_b);
    lv_label_set_text(g_ui.lbl_rgb, b);
    lv_obj_set_style_bg_color(g_ui.obj_rgb_preview,
                              lv_color_make(d->rgb_r, d->rgb_g, d->rgb_b), 0);

    /* ===== Tab3: Device ===== */

    lv_label_set_text(g_ui.lbl_id, d->id);
    lv_label_set_text(g_ui.lbl_cmd, d->cmd);
    lv_label_set_text(g_ui.lbl_time, d->update_time);

    /* ui_update 末尾加: */
    lv_snprintf(b, sizeof(b), "ID: %s", d->id);
    lv_label_set_text(g_ui.lbl_drop_id, b);
    lv_snprintf(b, sizeof(b), "Updated: %s", d->update_time);
    lv_label_set_text(g_ui.lbl_drop_time, b);
    lv_snprintf(b, sizeof(b), "Wi-Fi: %d MQTT: %d", d->w_s, d->mt_s);
    lv_label_set_text(g_ui.lbl_drop_rssi, b);
    _set_connect_lb_color(g_ui.lbl_mqtt_status, d->w_s, "MQTT");
    _set_connect_lb_color(g_ui.lbl_wifi_status, d->mt_s, "Wi-Fi");
    // _show_notice_card(LV_SYMBOL_DOWNLOAD, "Sensor data update");
}
void ui_set_conn_status(bool c)
{
    if (c)
    {
        lv_label_set_text(g_ui.lbl_status, "BLE: " LV_SYMBOL_WIFI);
        lv_obj_set_style_text_color(g_ui.lbl_status, lv_color_hex(0xC8E6C9), 0);

        lv_label_set_text(g_ui.lbl_conn, "Connected");
        lv_obj_set_style_text_color(g_ui.lbl_conn, UI_C_GREEN, 0);
        lv_label_set_text(g_ui.lbl_drop_conn, LV_SYMBOL_WIFI " Connected");
        lv_obj_set_style_text_color(g_ui.lbl_drop_conn, lv_color_hex(0xC8E6C9), 0);
        _show_notice_card(LV_SYMBOL_BELL, "已连接");
    }
    else
    {
        lv_label_set_text(g_ui.lbl_status, "BLE:" LV_SYMBOL_CLOSE);
        lv_obj_set_style_text_color(g_ui.lbl_status, lv_color_hex(0xFFCDD2), 0);

        lv_label_set_text(g_ui.lbl_conn, "Disconnected");
        lv_obj_set_style_text_color(g_ui.lbl_conn, UI_C_RED, 0);
        lv_label_set_text(g_ui.lbl_drop_conn, LV_SYMBOL_CLOSE " Disconnected");
        lv_obj_set_style_text_color(g_ui.lbl_drop_conn, lv_color_hex(0xFFCDD2), 0);
        _show_notice_card(LV_SYMBOL_BELL, "未连接");
    }
}

ui_handles_t *ui_get_handles(void) { return &g_ui; }

void control_screen(uint8_t flag)
{
}
