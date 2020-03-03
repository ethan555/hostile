/// @description player_swing_back_state

check_jumping_movement();
if (on_land) {
	change_sprite(SWING_BACK,-1,-1);
	//xspd = facing /* WALKSPEED */* (image_number - image_index);
} else {
	change_sprite(SWING_JUMP,-1,-1);
}
	
if (animation_hit_frame(1)) {
	// Hitbox!
}
else if (animation_end()) {
	// Go back to idle state
	weapon_sprite_index = SWORD_NONE;
	change_sprite(IDLE,0,0);
	state = IDLE;
}