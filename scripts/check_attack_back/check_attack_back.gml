/// @description check_attack_back

#region If attacking, attack
if (in[attack]) {
	if ((in[left] || in[right]) && !(in[left] && in[right])) {
		facing = -in[left] + in[right];
	}
	if (on_land) {
		if (!crouching) {
			change_sprite(SWING_BACK,0,ATTACK_IMAGE_SPEED);
			xspd = facing * ATTACK_BACKSPEED;//* (image_number - image_index);
			
			emit_dust(5);
		} else
			change_sprite(SWING_CROUCH,0,ATTACK_IMAGE_SPEED);
	}
	else
		change_sprite(SWING_JUMP,0,ATTACK_IMAGE_SPEED);
	state = SWING_BACK;
	weapon_sprite_index = SWORD_SWING_BACK;
	reset_last_pressed();
}
#endregion
