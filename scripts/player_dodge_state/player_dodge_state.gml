/// @description player_dodge_state

check_fall();
check_friction_dodge();

emit_dust(1);

var xs = abs(xspd);
if (xs < WALKSPEED) {
	state = IDLE;
	if (in[left] || in[right])
		change_sprite(RUN, 0, 0);
	else {
		change_sprite(IDLE, 0, 0);
		xspd = 0;
	}
	check_dodge();
}
else if (xs < DODGE_ENDSPEED) {
	change_sprite(DODGE, 1, 0);
}

check_attack_dodge();
if (check_wall()) {
	state = IDLE;
	if (in[left] || in[right])
		change_sprite(RUN, 0, 0);
	else {
		change_sprite(IDLE, 0, 0);
		xspd = 0;
	}
	check_dodge();
	weapon_sprite_index = SWORD_NONE;
}
