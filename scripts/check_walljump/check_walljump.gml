/// @description check_walljump

var hit_wall = instance_place(x+facing * 4,y,collider) != noone;
return hit_wall;