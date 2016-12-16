/// scr_update(path, pos);
var path = argument[0];
var pos  = argument[1];
switch(path) {
    case ZHUPAN:
        oPathZhuPan.updater = pos;
        
        with (oPathZhuPan) {
            dot[row, rowHasCol[row]] = updater;
            count++;
            rowHasCol[row]++;
            if (rowHasCol[row] >= down) {
                row++;
                rowHasCol[row] = 0;
            }

        }
        scr_update(BIG, pos);
    break;
    
    case BIG:
        oPathBig.updater = pos;
        with(oPathBig) {
            if (updater == HE) {
                if (row==0 && rowHasCol[row] == 0) {
                } else {
                    dot[preRow,preCol] += BIGHE;
                }
            } else {
                dot[row, rowHasCol[row]] = updater;
                rowHasCol[row]++;
                if (rowHasCol[row] >= down) {
                    row++;
                    rowHasCol[row] = 0;
                }
            }
        }
        
        
    break;
    
    
}
