/// scr_update(path, type);
var path = argument[0];
var type  = argument[1];
switch(path) {
    case ZHUPAN:
        oPathZhuPan.updater = pos;
        
        with (oPathZhuPan) {
            dot[col, colHasRow[col]] = updater;
            count++;
            colHasRow[col]++;
            if (colHasRow[col] >= down) {
                col++;
                colHasRow[col] = 0;
            }

        }
        scr_update(BIG, type);
    break;
    
    case BIG:
        oPathBig.updater = type;
        with(oPathBig) {
            if (updater == HE) {
                if (dot[0,0] == NULL) {
                } else {
                    if (dot[preCol,preRow] < HE) {
                        dot[preCol,preRow] += BIGHE;
                    }
                }
            } else {
                if (dot[0,0] == NULL) {
                } else {
                    var magic = dot[preCol,preRow] - updater;
                    if (magic != 0 && magic != BIGHE) {
                        col++;
                        colHasRow[col] = 0;
                    }
                }
                dot[col, colHasRow[col]] = updater;
                scr_update_down_three();
                count++;
                preCol = col;
                preRow = colHasRow[col];
                colHasRow[col]++;
            }
            
            // 更新用于绘制的数组
            if (updater == HE) {
            // 如果是和
                if (sDot[0,0] == NULL) {
                // 第一个是和,无效
                } else {
                    if (sDot[sPreCol,sPreRow] < HE) {
                    // 前一个庄闲没有被和加成
                        sDot[sPreCol,sPreRow] += BIGHE;  // 对前一个进行和加成
                    }
                }
            } else {
                scr_add_updater();
            }
        }
    break;
    
    case oPathBigEye:
        oPathBigEye.updater = type;
        with(oPathBigEye) {
        scr_add_updater();
        }
    break;
    
    case oPathSmall:
        oPathSmall.updater = type;
        with(oPathSmall) {
        scr_add_updater();
        }
    break;
    
    case oPathXiaoQiang:
        oPathXiaoQiang.updater = type;
        with(oPathXiaoQiang) {
        scr_add_updater();
        }
    break;
    
}
