/// @description check_attack

#region If attacking, attack
if (in[attack]) {
	if (check_land())
		change_sprite(SWING,0,1);
	else
		change_sprite(SWING_JUMP,0,1);
	state = SWING;
}
#endregion
