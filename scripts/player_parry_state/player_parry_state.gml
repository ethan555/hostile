/// @description player_parry_state

check_friction();

// Don't move
if (animation_end()) {
	image_index = image_number - 1;
	image_speed = 0;
}
//else if (animation_at_end()) {
if (animation_past_frame(0)) {
	if (!in[block]) {
		// Release the block. Punish?
		change_sprite(IDLE, 0, 0);
		state = IDLE;
		//reset_last_pressed();
	}
	check_block();
	check_attack();
	check_dodge();
}

//}
