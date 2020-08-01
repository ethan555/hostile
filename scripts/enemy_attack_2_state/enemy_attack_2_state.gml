/// @description enemy_attack_2_state

if (on_land) {
	xspd = 0;
	switch(attack_index) {
		case 0:
			// Raise hand
			xspd = 0;
			change_sprite(RAISE,0,0);
			attack_charge += 1/seconds_to_frames(1);
			vibrate = attack_charge + .5;
			create_particles(emitter, part_charge, irandom(1));
			if(attack_charge > 1) {
				attack_charge = 0;
				vibrate = 0;
				attack_index ++;
			}
			stagger = false;
			break;
		case 1:
			// Lower arm, begin attack
			change_sprite(RAISE, 1, 0);
			attack_charge += 1/seconds_to_frames(.75);
			if(attack_charge > 1) {
				attack_charge = 0;
				vibrate = 0;
				attack_index ++;
			}
			break;
		case 2:
		case 3:
		case 4:
		case 5:
		case 6:
		case 7:
		case 8:
		case 9:
		case 10:
		case 11:
		case 12:
		case 13:
		case 14:
		case 15:
			// Launch Super Attack
			change_sprite(RAISE, 2, 0);
			attack_charge += 1/seconds_to_frames(.1);
			create_particles(emitter, part_charge, irandom(1));
			view_screenshake((1 - attack_charge)*8, 5);
			if(attack_charge > 1) {
				attack_charge = 0;
				shoot_projectile(fireball_big, x + sin(pi*1.2314159 * attack_index) * facing * 64, y, 3, player, 0, -7);
				attack_index ++;
			}
			break;
		case 16:
			change_sprite(RAISE, 3, ATTACK_IMAGE_SPEED*.25);
			attack_index ++;
			break;
		case 17:
			if (animation_end()) {
				reset_enemy_attack();
			}
			break;
	}
}