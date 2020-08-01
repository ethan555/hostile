/// @description check_fall

#region Check if player should fall
var l = instance_place(x,y+1,ledge);
var l_below = (l != noone && bbox_bottom < l.bbox_top);
var below = l_below || instance_place(x,y+1,collider) != noone;
if (!below) {
	var index = 0;
	if (yspd > 0) {
		index = 1;
	}
	xspd = clamp(xspd + (friction * 1.75), -WALKSPEED, WALKSPEED);
	state = IDLE;
	change_sprite(JUMP,index,0);
}
#endregion