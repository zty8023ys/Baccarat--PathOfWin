/// scr_down_three
var _updater = NULL;
var _type = argument[0];
if (scr_isJump()) {
    // 默认突脚跳,蓝
    _updater = BLUE;
    if (colHasRow[preCol] == colHasRow[preCol-_type]) {
    // 判断齐脚跳,红
        _updater = RED;
    }
} else {
    // 没跳
    if (colHasRow[col]+1 <= colHasRow[col-_type]) {
    // 有对写红, +1 是为了算上自己
        _updater = RED;
    } else {
        if (colHasRow[col] == colHasRow[col-_type]) {
        // 刚没对的时候写蓝
            _updater = BLUE;
        } else {
            // 其他为长庄长闲, 突脚连写红
            _updater = RED;
        }
    }
}

return _updater;
