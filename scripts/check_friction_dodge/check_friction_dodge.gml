/// @description check_friction

#region Slow down without changing sprite
if (xspd != 0) {
	var s = sign(xspd);
	xspd -= s*friction * 3 / 4;
	if (sign(xspd) != s) {
	    xspd = 0;
	}
}
#endregion
