/// @description player_suicide_state


if (animation_end()) {
	// Go to DIE state
	state = DIE;
	change_sprite(DIE,0,.75);
	weapon_sprite_index = SWORD_NONE;
	var inst = instance_create_depth(x,y,depth,sword_fly);
	with (inst) {
		xspd = other.facing * WALKSPEED;
		yspd = -WALKSPEED * 2;
	}
	xspd = -facing * DODGESPEED;
} else {
	
	if (on_land) {
		change_sprite(SUICIDE,-1,-1);
	} else {
		change_sprite(SUICIDE_JUMP,-1,-1);
	}
}
