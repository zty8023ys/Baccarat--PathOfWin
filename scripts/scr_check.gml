/// scr_check(array, col, row, updater); // 检查是否相同颜色
var _array = argument[0];
var _col = argument[1];
var _row = argument[2];
var _updater = argument[3];
var _color = _array[_col,_row];
return (_color == _updater || _color == _updater+BIGHE)
