/// @description enemy_attack_1_state

if (on_land) {
	xspd = 0;
	switch(attack_index) {
		case 0:
			// Jump away
			yspd = -BACKJUMPSPEED;
			xspd = -facing * DODGE_ENDSPEED;
			change_sprite(SWING_JUMP,0,0);
			attack_index ++;
			break;
		case 1:
			// Landed, shoot a fireball
			shoot_projectile(fireball, x + projectile_x * facing, y + projectile_y, -1, player, facing * FIREBALL_SPEED, 0);
			change_sprite(SWING, ATTACK_HIT_INDEX, ATTACK_IMAGE_SPEED);
			attack_index ++;
			break;
		case 2:
			// Set up next fireball
			if (animation_hit_frame(ATTACK_HIT_INDEX+1)) {
				change_sprite(SWING, 0, 3*ATTACK_IMAGE_SPEED/4);
				attack_index ++;
			}
			break;
		case 3:
			if (animation_hit_frame(ATTACK_HIT_INDEX)) {
				shoot_projectile(fireball, x + projectile_x * facing, y + projectile_y, -1, player, facing * FIREBALL_SPEED, 0);
			} else if (image_index < ATTACK_HIT_INDEX) {
				var target_distance = abs(target.x - x);
				if (target_distance < ENEMY_TARGET_DISTANCE && (target.state == SWING || target.state == SWING_BACK) && target.image_index < ATTACK_HIT_INDEX) {
					// PARRY
					in[block] = true;
					check_block();
					return;
				}
			} else if (animation_hit_frame(ATTACK_HIT_INDEX+1)) {
				attack_index ++;
				change_sprite(SWING, 0, 2*ATTACK_IMAGE_SPEED/5);
			}
			break;
		case 4:
			if (animation_hit_frame(ATTACK_HIT_INDEX)) {
				var tdir = point_direction(x,y,target.x,target.y);
				shoot_projectile(fireball_big, x + projectile_x * facing, y + projectile_y, -1, player, lengthdir_x(FIREBALL_SPEED, tdir), lengthdir_y(FIREBALL_SPEED, tdir));
			} else if (image_index < ATTACK_HIT_INDEX) {
				create_particles(emitter, part_charge, irandom(1));
				var target_distance = abs(target.x - x);
				if (target_distance < ENEMY_TARGET_DISTANCE && (target.state == SWING || target.state == SWING_BACK) && target.image_index < ATTACK_HIT_INDEX) {
					// PARRY
					in[block] = true;
					check_block();
					return;
				}
			} else if (animation_hit_frame(ATTACK_HIT_INDEX+1)) {
				attack_index ++;
			}
			break;
		case 5:
			if (animation_end()) {
				reset_enemy_attack();
			}
			break;
	}
}