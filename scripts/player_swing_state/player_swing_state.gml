/// @description player_swing_state

check_jumping_movement();
check_target_distance();
if (on_land) {
	if (yspdold > LANDSPEED) {
		xspd = 0;
		state = LAND;
		change_sprite(LAND,0,0);
		alarm[1] = clamp(seconds_to_frames(yspdold/(LANDSPEED * 2)), seconds_to_frames(.25), seconds_to_frames(.5));
		emit_dust_large(20);
		create_rocks(bbox_left - 2, bbox_right + 2, bbox_top-1, bbox_top-1, 0, 5, -yspdold/2, -yspdold/4, .1, .25, 5);
		weapon_sprite_index = SWORD_NONE;
		return;
	}
	else {
		change_sprite(SWING,-1,-1);
	}
	//xspd = facing /* WALKSPEED */* (image_number - image_index);
} else {
	change_sprite(SWING_JUMP,-1,-1);
}
	
if (animation_hit_frame(ATTACK_HIT_INDEX)) {
	// Hitbox!
	if (on_land) {
		xspd = facing * ATTACKSPEED;
		emit_dust(7);
	}
	change_sprite(-1, -1, ATTACK_IMAGE_SPEED_AFTER);
	create_hitbox(LA_X * facing,LA_Y,LA_XSCALE * facing,LA_YSCALE,target,SWING_LIFESPAN,LA_DAMAGE,LA_XHIT * facing,LA_YHIT,SWING_BLOCKABLE);
}
else if (animation_end()) {
	// Go back to idle state
	weapon_sprite_index = SWORD_NONE;
	change_sprite(IDLE,0,0);
	state = IDLE;
}
else if (image_index >= ATTACK_CHAIN_INDEX) {
	if (on_land) {
		check_block();
		check_dodge();
		check_attack_back();
	} else
		check_attack();
}