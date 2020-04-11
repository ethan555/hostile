/// @description player_block_state

check_friction();

// Don't move
if (animation_end()) {
	/*image_index = image_number - 1;
	image_speed = 0;*/
	change_sprite(BLOCK_RELEASE, 0, BLOCK_RELEASE_IMAGE_SPEED);
	state = BLOCK_RELEASE;
}
//else if (animation_at_end()) {
/*if (animation_past_frame(1)) {
	/*if (!in[block_pressed]) {
		// Release the block. Punish?
		change_sprite(BLOCK_RELEASE, 0, BLOCK_RELEASE_IMAGE_SPEED);
		state = BLOCK_RELEASE;
		//reset_last_pressed();
	
	}
	check_dodge();
	check_attack();
}*/

//}
