/// @description check_dodge

#region If dodging, dodge
if (in[dodge]) {
	if (check_land()) {
		xspd = DODGESPEED * facing;
		change_sprite(DODGE,0,0);
		state = DODGE;
		emit_dust(10);
	}
}
#endregion
