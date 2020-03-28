/// @description player_block_release_state

check_friction();

// Don't move
if (animation_end()) {
	change_sprite(IDLE, 0, 0);
	state = IDLE;
}
check_block();
if (in[left] || in[right]) {
	state = IDLE;
	change_sprite(IDLE, 0, 0);
}
