/// @description Take input and check physics

#region Get inputs
//var escape, suicide, left, right, jump, down, dodge, attack, block;
get_player_input();
get_last_pressed();

/*if (in[block]) {
	state = THROWN;
	xspd = -facing * 3;
	yspd = -15;
	change_sprite(THROWN,0,0);
}*/

if (keyboard_check_pressed(ord("R"))) {
	state = IDLE;
	x = xstart;
	y = ystart;
	room_restart();
}

on_land = check_land();
script_execute(states[state]);
#endregion
