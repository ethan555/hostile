/// @description check_jumping_movement

#region Move as normal
if (!check_land()) {
	if (in[left] || in[right] && !(in[left] && in[right])) {
	    xspd = clamp(xspd + (-in[left] + in[right]) * WALKSPEED, -WALKSPEED, WALKSPEED);
	} else {
		check_friction();
	}
} else {
	check_friction();
}
if (xspd != 0) {
	facing = sign(xspd);
}
#endregion
