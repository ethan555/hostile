/// @description get_player_input
if (!instance_exists(ui_parent)) {
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
	in[block_pressed] = control.block_pressed;
} else {
	in[escape] = false;
	in[suicide] = false;
	in[left] = false;
	in[right] = false;
	in[down] = false;
	in[up] = false;
	in[jump] = false;
	in[dodge] = false;
	in[attack] = false;
	in[block] = false;
	in[block_pressed] = false;
}