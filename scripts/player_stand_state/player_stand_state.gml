/// @description player_stand_state
check_dodge();
if (animation_end()) {
	state = IDLE;
	change_sprite(IDLE,0,0);
}
