/// scr_update_down_three();
/*下三路口决：
* 齐脚跳写红，  !
* 突脚跳写蓝，  !
* 有对写红，    !!
* 无对写蓝，    !!
* 突脚连写红。  !!!
*/
if (scr_can_down_three(BIGEYE)) {
    // 第三列第一行或者第二列第二行
    scr_update(oPathBigEye, scr_down_three(BIGEYE));
}
if (scr_can_down_three(SMALL)) {
    // 第三列第一行或者第二列第二行
    scr_update(oPathSmall, scr_down_three(SMALL));
}
if (scr_can_down_three(XIAOQIANG)) {
    // 第三列第一行或者第二列第二行
    scr_update(oPathXiaoQiang, scr_down_three(XIAOQIANG));
}
/*
if (yyy) {
    scr_update(oPathSmall, updater);
}
if (zzz) {
    scr_update(oPathXiaoQiang, updater);
}
