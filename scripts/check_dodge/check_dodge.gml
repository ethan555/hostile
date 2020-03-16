/// @description check_dodge

#region If dodging, dodge
if (in[dodge]) {
	if (on_land) {
		if ((in[left] || in[right]) && !(in[left] && in[right])) {
			facing = -in[left] + in[right];
		}
		xspd = DODGESPEED * facing;
		change_sprite(DODGE,0,0);
		state = DODGE;
		emit_dust(10);
		weapon_sprite_index = SWORD_NONE;
		reset_last_pressed();
	}
}
#endregion
