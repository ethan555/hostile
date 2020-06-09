///@description player_hurt_state

check_friction();

if (animation_end()) {//xspd == 0) {
	xspd = 0;
	state = IDLE;
	change_sprite(state, 0, 0);
}
