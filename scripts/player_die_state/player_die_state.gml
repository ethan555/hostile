/// @description player_die_state

check_friction();

if (animation_end()) {
	// Go back to idle state
	change_sprite(DIE,sprite_get_number(sprite[DIE]) - 1,0);
} else {
	if (on_land) {
		if (image_speed == 0) {
			change_sprite(DIE,sprite_get_number(sprite[DIE]) - 1,0);
		}
	} else {
		var index = 0;
		if (yspd > 0) {
			index = 1;
		}
		change_sprite(DIE,index,0);
	}
}
