/// @description check_land

var l = instance_place(x,y+1,ledge);
var l_below = (l != noone && bbox_bottom < l.bbox_top);
var below = l_below || instance_place(x,y+1,collider) != noone;
return below;