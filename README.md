# 可穿戴式终端

## 一、项目介绍

用于接收周围的BLE数据，当数据格式符合要求即可在屏幕上显示相应的数据布局。

## 工程编译及下载：

- 执行`scons --board=sf32lb52-lchspi-ulp -j8`即可生成工程
- 下载可以执行build_sf32lb52-lchspi-ulp_hcpu\uart_download.bat输入下载UART的端口号执行

## 二、main.c 分析 —— 程序入口与主循环

1. main 函数

```c
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
```

## 三、项目结构

在lv_user中存放着页面的UI部分和用到的相应字库
主要的功能在main中

```c
lv_user:
    app_entry.c
    app_entry.h
    app_logic.c
    app_logic.h
    app_ui.c
    app_ui.h
    get_bt_value.c
    get_bt_value.h
    lv_customer_font_PingFangSC_Regular_16.c
    lv_customer_font_PingFangSC_Regular_24.c
    lv_customer_font_PingFangSC_Regular_32.c
    SConscript
    _app_icon_alpha_100x100.c
    _dev_info_alpha_100x100.c
```

## 四、运行图

![运行图](https://raw.githubusercontent.com/Ale36D/img-bed/main/可穿戴式1.jpg)
![运行图](https://raw.githubusercontent.com/Ale36D/img-bed/main/可穿戴式2.jpg)
![运行图](https://raw.githubusercontent.com/Ale36D/img-bed/main/可穿戴式3.jpg)

