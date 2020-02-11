/// @description player_dodge_state

check_fall();
check_friction_dodge();

emit_dust(1);

var xs = abs(xspd);
if (xs < WALKSPEED) {
	state = IDLE;
	change_sprite(IDLE, 0, 0);
	xspd = 0;
}
else if (xs < DODGE_ENDSPEED) {
	change_sprite(DODGE, 1, 0);
}
