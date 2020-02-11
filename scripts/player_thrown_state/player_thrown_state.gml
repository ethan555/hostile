/// @description player_thrown_state

var landed = check_land();
if (landed) {
	if (yspdold != 0) {
		// Land heavily
		change_sprite(DIE,3, 0);
		xspd = xspd / 2;
		alarm[0] = clamp(yspdold * 2, seconds_to_frames(.75), seconds_to_frames(2));
		emit_dust_large(20);
		create_rocks(bbox_left - 2, bbox_right + 2, bbox_top-1, bbox_top-1, 0, 5, -yspdold/2, -yspdold/4, .1, .25, 5);
	}
	check_friction();
} else {
	var index = 0;
	if (yspd > 0) {
		index = 1;
	}
	change_sprite(THROWN,index,0);
}

if (animation_end()) {
	/*state = STAND;
	change_sprite(STAND,0,1);
	xspd = 0;*/
	change_sprite(DIE, 3, 0);
}
