/// @description player_swing_state

check_jumping_movement();
if (on_land) {
	change_sprite(SWING,-1,-1);
	//xspd = facing /* WALKSPEED */* (image_number - image_index);
} else {
	change_sprite(SWING_JUMP,-1,-1);
}
	
if (animation_hit_frame(ATTACK_HIT_INDEX)) {
	// Hitbox!
}
else if (animation_end()) {
	// Go back to idle state
	weapon_sprite_index = SWORD_NONE;
	change_sprite(IDLE,0,0);
	state = IDLE;
}
else if (image_index >= ATTACK_CHAIN_INDEX) {
	if (on_land) {
		check_dodge();
		check_attack_back();
	} else
		check_attack();
}