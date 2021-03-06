/// @description check_enemy_attack

#region If attacking, attack
if (in[attack]) {
	if ((in[left] || in[right]) && !(in[left] && in[right])) {
		facing = -in[left] + in[right];
	}
	if (on_land) {
		if (!crouching) {
			// Decide which sequence we will do
			var attack_index = irandom(ENEMY_ATTACK_NUMBER);
			switch (attack_index) {
				case 0:
					change_sprite(SWING,0,ATTACK_IMAGE_SPEED);
					xspd = facing * ATTACKSPEED;//* (image_number - image_index);
					check_target_distance();
					break;
				case 1:
					
			}
			
			emit_dust(5);
		} else
			change_sprite(SWING_CROUCH,0,ATTACK_IMAGE_SPEED);
	}
	else
		change_sprite(SWING_JUMP,0,ATTACK_IMAGE_SPEED);
	state = SWING;
	weapon_sprite_index = SWORD_SWING;
	reset_last_pressed();
}
#endregion
