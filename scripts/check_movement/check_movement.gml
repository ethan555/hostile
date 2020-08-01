/// @description check_movement

#region Move as normal
var below = on_land;
if ((in[left] || in[right]) && !(in[left] && in[right])) {
	var control_direction = -in[left] + in[right];
	var newxspd = clamp(xspd + control_direction * (friction * 1.75), -WALKSPEED, WALKSPEED);
	if (sign(xspd) != control_direction) {
		xspd = newxspd;
	} else {
		xspd = sign(xspd) * max(abs(xspd), abs(newxspd));
	}
	if (below) {
		change_sprite(RUN,-1,1);
		if (animation_hit_frame(1) || animation_hit_frame(5)) {
			emit_dust(1);
		}
	}
	
} else {
	if (xspd != 0) {
		var rate = on_land * .9 + .1;
	    var s = sign(xspd);
	    xspd -= s*friction * rate;
	    if (sign(xspd) != s && s != 0) {
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
