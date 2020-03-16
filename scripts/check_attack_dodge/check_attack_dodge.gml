/// @description check_attack_dodge

#region If attacking, attack
if (in[attack]) {
	/*if ((in[left] || in[right]) && !(in[left] && in[right])) {
		facing = -in[left] + in[right];
	}*/
	if (on_land) {
		state = SWING_CROUCH;
		change_sprite(SWING_CROUCH,0,ATTACK_IMAGE_SPEED);
		xspd = facing * ATTACK_DODGESPEED;//* (image_number - image_index);
			
		emit_dust(5);
		weapon_sprite_index = SWORD_SWING_CROUCH;
	}
	else {
		change_sprite(SWING_JUMP,0,ATTACK_IMAGE_SPEED);
		state = SWING;
		weapon_sprite_index = SWORD_SWING;
	}
	reset_last_pressed();
}
#endregion
