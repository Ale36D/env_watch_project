/**
 * @file app_logic.c
 * @brief 逻辑层 - 轻量 JSON 解析, 字段名直接对应 JSON key
 */
#include "app_logic.h"
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

#define LOG_TAG "app_logic"
#include "log.h"

static sensor_data_t g_d;

/* ==================== JSON 解析 ==================== */
static const char *jfind(const char *j, const char *k)
{
    char p[48];
    snprintf(p, sizeof(p), "\"%s\"", k);
    const char *r = strstr(j, p);
    if (!r)
        return NULL;
    r += strlen(p);
    while (*r == ':' || *r == ' ' || *r == '\t')
        r++;
    return r;
}
static float jf(const char *j, const char *k, float d)
{
    const char *p = jfind(j, k);
    return p ? (float)atof(p) : d;
}
static int ji(const char *j, const char *k, int d)
{
    const char *p = jfind(j, k);
    return p ? atoi(p) : d;
}
static void js(const char *j, const char *k, char *o, int s)
{
    const char *p = jfind(j, k);
    if (!p || *p != '"')
    {
        o[0] = 0;
        return;
    }
    p++;
    int i = 0;
    while (*p && *p != '"' && i < s - 1)
        o[i++] = *p++;
    o[i] = 0;
}

static int parse(const char *json, uint16_t len, sensor_data_t *d)
{
    if (!json || len < 10 || json[0] != '{')
        return -1;

    /* 顶层 */
    js(json, "id", d->id, sizeof(d->id));
    js(json, "cmd", d->cmd, sizeof(d->cmd));
    js(json, "updateTime", d->update_time, sizeof(d->update_time));

    /* relay{} */
    const char *sec = strstr(json, "\"relay\"");
    if (sec)
    {
        d->r_1 = ji(sec, "r_1", d->r_1);
        d->r_2 = ji(sec, "r_2", d->r_2);
        d->r_3 = ji(sec, "r_3", d->r_3);
        d->r_4 = ji(sec, "r_4", d->r_4);
        d->bz = ji(sec, "bz", d->bz);
    }

    /* sensor{} */
    sec = strstr(json, "\"sensor\"");
    if (sec)
    {
        d->tp = jf(sec, "tp", d->tp);
        d->hm = jf(sec, "hm", d->hm);
        d->l = ji(sec, "l", d->l);
        d->vt = jf(sec, "vt", d->vt);
        d->dp = ji(sec, "dp", d->dp);
        d->pr = jf(sec, "pr", d->pr);
        d->al = jf(sec, "al", d->al);
        d->madc = ji(sec, "madc", d->madc);
        d->mdi = ji(sec, "mdi", d->mdi);
        d->fd = ji(sec, "fd", d->fd);
        d->aX = jf(sec, "aX", d->aX);
        d->aY = jf(sec, "aY", d->aY);
        d->aZ = jf(sec, "aZ", d->aZ);
        d->rl = ji(sec, "rl", d->rl);
        d->pc = ji(sec, "pc", d->pc);
    }

    /* rgb{} */
    sec = strstr(json, "\"rgb\"");
    if (sec)
    {
        d->rgb_r = ji(sec, "r", d->rgb_r);
        d->rgb_g = ji(sec, "g", d->rgb_g);
        d->rgb_b = ji(sec, "b", d->rgb_b);
    }
    /* dev_s{} */
    sec = strstr(json, "\"dev_s\"");
    if (sec)
    {
        d->w_s = ji(sec, "w_s", d->w_s);
        d->mt_s = ji(sec, "mt_s", d->mt_s);
    }
    return 0;
}

/* ==================== 接口 ==================== */

void logic_init(void)
{
    memset(&g_d, 0, sizeof(g_d));
    strcpy(g_d.id, "--");
    strcpy(g_d.cmd, "--");
    strcpy(g_d.update_time, "--:--");
}

int logic_on_ble_data(const char *json, uint16_t len)
{
    int old_ws = g_d.w_s;
    int old_mts = g_d.mt_s;

    if (parse(json, len, &g_d) != 0)
    {
        LOG_E("JSON parse failed");
        return -1;
    }

    /* WiFi 状态变化 */
    if (g_d.w_s != old_ws)
    {
        if (g_d.w_s)
            _show_notice_card(LV_SYMBOL_WIFI, "WiFi Connected");
        else
            _show_notice_card(LV_SYMBOL_CLOSE, "WiFi Lost");
    }

    /* MQTT 状态变化 */
    if (g_d.mt_s != old_mts)
    {
        if (g_d.mt_s)
            _show_notice_card(LV_SYMBOL_OK, "MQTT Connected");
        else
            _show_notice_card(LV_SYMBOL_CLOSE, "MQTT Lost");
    }
    // LOG_I("tp=%.1f hm=%.1f l=%d pr=%.0f", g_d.tp, g_d.hm, g_d.l, g_d.pr);
    ui_update(&g_d);

    return 0;
}

void logic_on_switch_changed(int relay_id, bool state)
{
    LOG_I("Relay %d -> %s", relay_id, state ? "ON" : "OFF");
    /* TODO: BLE write to ESP32
     * char cmd[64];
     * snprintf(cmd, sizeof(cmd),
     *     "{\"cmd\":\"ctrl\",\"relay_id\":%d,\"state\":%d}",
     *     relay_id, state ? 1 : 0);
     * ble_write_to_esp32(cmd, strlen(cmd));
     */
}

const sensor_data_t *logic_get_data(void) { return &g_d; }