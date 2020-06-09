///@description check_target_distance
var targ = instance_nearest(x,y,target);
if (abs(targ.y - y) < TARGET_ATTACK_DISTANCE && abs(targ.x - x) < TARGET_ATTACK_DISTANCE && sign(targ.x - x) == sign(facing) && sign(xspd) == facing) {
	var oldsign = sign(xspd);
	xspd -= oldsign * min(abs(xspd), friction*2);
	if (sign(xspd) * oldsign != 1) {
		xspd = 0;
	}
}