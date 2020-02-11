/// @description check_movement

#region Move as normal
var below = check_land();
if (in[left] || in[right] && !(in[left] && in[right])) {
    xspd = clamp(xspd + (-in[left] + in[right]) * (friction * 1.75), -WALKSPEED, WALKSPEED);
	if (below) {
		change_sprite(RUN,-1,1);
		if (animation_hit_frame(1) || animation_hit_frame(5)) {
			emit_dust(1);
		}
	}
} else {
	if (xspd != 0) {
	    var s = sign(xspd);
	    xspd -= s*friction;
	    if (sign(xspd) != s) {
	        xspd = 0;
	    }
		if (below) {
			change_sprite(SKID,-1,0);
			emit_dust(1);
		}
	} else {
		if (below) change_sprite(IDLE,-1,-1);
	}
}
if (xspd != 0) {
	facing = sign(xspd);
}
#endregion
