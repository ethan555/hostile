/// @description check_friction_swing_dodge

#region Slow down without changing sprite
if (xspd != 0) {
	var s = sign(xspd);
	xspd -= s*friction * 1 / 2;
	if (sign(xspd) != s) {
	    xspd = 0;
	}
}

if (!on_land) {
	change_sprite(SWING_JUMP,-1,ATTACK_IMAGE_SPEED);
	state = SWING;
	weapon_sprite_index = SWORD_SWING;
}
#endregion
