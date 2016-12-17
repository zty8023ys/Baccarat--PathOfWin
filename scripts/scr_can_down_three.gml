/// scr_can_down_three(type);
var _type = argument[0];
return (col >= _type+1 || (col == _type && colHasRow[col] >= 1))
