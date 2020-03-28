/// @description check_attack

#region If attacking, attack
if (in[block]) {
	if ((in[left] || in[right]) && !(in[left] && in[right])) {
		facing = -in[left] + in[right];
	}
	if (on_land) {
		change_sprite(BLOCK,0,BLOCK_IMAGE_SPEED);
		emit_dust(5);
		state = BLOCK;
		reset_last_pressed();
	}
}
#endregion
