/// scr_add_updater();
var c=0,r=0;
if (sDot[0,0] == NULL) {
} else {
    var magic = sDot[sPreCol,sPreRow] - updater;
    if (magic != 0 && magic != BIGHE) {
    // 如果与之前的颜色不相同,则换新一列
        sCol++;
        sRow = 0;
        c = sCol;
        r = sRow;
        sRow++;
    } else {
        if (scr_turn_right()) {
        // 有以上情况之一时,向右写
            c = sPreCol+1;
            r = sPreRow;
            if (sPreRow == 0) {
                sCol++;
            }
        } else {
        // 否则正常向下写
            c = sPreCol;
            r = sPreRow+1;
            sRow++;  // 当前列的行数加一
        }
    }
}
sDot[c, r] = updater;
sPreCol = c;
sPreRow = r;
