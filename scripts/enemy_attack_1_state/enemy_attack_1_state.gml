/// @description enemy_attack_1_state

check_jumping_movement();
check_target_distance();
if (on_land) {
	change_sprite(SWING_BACK,-1,-1);
	//xspd = facing /* WALKSPEED */* (image_number - image_index);
} else {
	change_sprite(SWING_JUMP,-1,-1);
}
	
if (animation_hit_frame(ATTACK_HIT_INDEX)) {
	// Hitbox!
	create_hitbox(LA_X * facing,LA_Y,LA_XSCALE * facing,LA_YSCALE,target,SWING_LIFESPAN,LA_DAMAGE,LA_XHIT * facing,LA_YHIT,SWING_BLOCKABLE);
}
else if (animation_end()) {
	// Go back to idle state
	weapon_sprite_index = SWORD_NONE;
	change_sprite(IDLE,0,0);
	state = IDLE;
	reset_enemy_move();
}
else if (image_index >= ATTACK_CHAIN_INDEX) {
	if (on_land) {
		check_dodge();
	}
}