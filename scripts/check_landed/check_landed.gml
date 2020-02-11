/// @description check_landed

#region Check if player should fall, or if not, land heavily
if (check_land()) {
	change_sprite(DIE,3,0);
} else {
	var index = 0;
	if (yspd > 0) {
		index = 1;
	}
	change_sprite(JUMP,index,0);
}
#endregion