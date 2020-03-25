/// @description player_swing_crouch_state

check_friction_swing_dodge();
if (!on_land) {
	state = SWING;
	change_sprite(SWING_JUMP,-1,-1);
	weapon_sprite_index = SWORD_SWING;
}

emit_dust(1);

if (animation_hit_frame(ATTACK_HIT_INDEX)) {
	// Hitbox!
	create_hitbox(LA_X * facing,LA_Y,LA_XSCALE * facing,LA_YSCALE,target,SWING_LIFESPAN,LA_DAMAGE,LA_XHIT * facing,LA_YHIT,SWING_BLOCKABLE);
}
else if (animation_end()) {
	// Go back to idle state
	change_sprite(SWING_CROUCH,-1,0);
}

var xs = abs(xspd);
if (xs < WALKSPEED) {
	weapon_sprite_index = SWORD_NONE;
	state = IDLE;
	if (in[left] || in[right])
		change_sprite(RUN, 0, 0);
	else {
		change_sprite(IDLE, 0, 0);
		xspd = 0;
	}
}