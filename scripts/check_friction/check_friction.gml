/// @description check_friction

#region Slow down without changing sprite
if (xspd != 0) {
	var s = sign(xspd);
	xspd -= s*friction;
	if (sign(xspd) != s) {
	    xspd = 0;
	}
}
#endregion
