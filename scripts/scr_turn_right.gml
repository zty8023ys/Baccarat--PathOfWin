return (
        sPreRow >= down-1  
        // 该列已满
        || sDot[sPreCol,sPreRow+1] != NULL 
        // 下一行已有元素
        || (sPreCol != 0 && scr_check(sDot,sPreCol-1,sPreRow+1,updater) )
        // 非第一列, 且与下一行的前一列颜色相同
        || (sPreRow < down-2 && scr_check(sDot,sPreCol,sPreRow+2,updater))
        // 某列前四行, 且与下下一行的颜色相同
       )
