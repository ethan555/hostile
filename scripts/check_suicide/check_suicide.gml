/// @description check_suicide

#region If suiciding, suicide
if (in[suicide]) {
	if (on_land)
		change_sprite(SUICIDE,0,.75);
	else
		change_sprite(SUICIDE_JUMP,0,.75);
	state = SUICIDE;
	weapon_sprite_index = SWORD_SUICIDE;
	xspd = 0;
}
#endregion
