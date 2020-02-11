/// @description player_idle_state

check_jumping_movement();
if (instance_place(x,y+1,collider) != noone || instance_place(x,y+1,ledge) != noone)
	change_sprite(SWING,-1,-1);
else
	change_sprite(SWING_JUMP,-1,-1);
	
if (animation_hit_frame(1)) {
	// Hitbox!
}
else if (animation_end()) {
	// Go back to idle state
	state = IDLE;
}
