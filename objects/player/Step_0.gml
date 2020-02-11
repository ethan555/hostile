/// @description Take input and check physics

#region Get inputs
//var escape, suicide, left, right, jump, down, dodge, attack, block;

in[escape] = control.escape;
in[suicide] = control.suicide && !escape;
in[left] = control.left;
in[right] = control.right;
in[down] = control.down;
in[up] = control.up;
in[jump] = control.jump;
in[dodge] = control.dodge;
in[attack] = control.attack;
in[block] = control.block;

get_last_pressed();

if (in[block]) {
	state = THROWN;
	xspd = -facing * 3;
	yspd = -15;
	change_sprite(THROWN,0,0);
}

if (keyboard_check_pressed(ord("R"))) {
	x = xstart;
	y = ystart;
	room_restart();
}

script_execute(states[state]);
#endregion
