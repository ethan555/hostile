/// @description deal_hit Used by hitbox to deal damage, knockback, etc. to a collided target
/// @param hit_inst

var i = 0;
var hit_inst = argument[i++];

with (hit_inst) {
	facing = -sign(other.xhit);
	if (facing == 0) facing = 1;
	var amount_ = 1, xdelta = other.xhit * stagger;
	if (other.blockable && (state == BLOCK || state == PARRY || state == PARRY_BACK)) {
		// Parry?
		//if (image_index < PARRY_INDEX + 1) {
		if (other == character_parent) {
			if (other.parent.state == SWING_BACK) {
				change_sprite(PARRY_BACK, 0, PARRY_IMAGE_SPEED);
			}
			else {
				change_sprite(PARRY, 0, PARRY_IMAGE_SPEED);
			}
			with (other.parent) {
				//yspd = -100;
				xspd = -facing * PARRIED_SPEED_LIGHT;
				change_sprite(-1, round(image_index), PARRIED_IMAGE_SPEED);
			}
		} else {
			change_sprite(PARRY, 0, PARRY_IMAGE_SPEED);
		}
		state = PARRY;
		amount_ = .5;
		view_screenshake(1 ,seconds_to_frames(.2));
			
		var rand = 4;
		part_particles_create(part_system, x + facing * random(rand), y - rand/2 + random(rand), part_spark, 5+irandom(rand));
		// Block?
		/*
		else {
			change_sprite(BLOCK, 1, BLOCK_IMAGE_SPEED);
			state = BLOCK;
			amount_ = .5;
			with (other.parent) {
				xspd = -xdelta * amount_;
			}
		}*/
	}
	/*else if (state == BLOCK_RELEASE) {
		change_sprite(BLOCK, 1, BLOCK_IMAGE_SPEED);
		state = BLOCK;
		amount_ = .5;
		with (other.parent) {
			xspd = -xdelta * amount_;
		}
	}*/
	else {
		hp -= other.damage;
		reset_last_pressed();
		if (stagger) {
			weapon_sprite_index = SWORD_NONE;
			if (other.yhit != 0) {
				state = THROWN;
				change_sprite(state, 0, 0);
				yspd = other.yhit;
				alarm[0] = -1;
				alarm[1] = -1;
			}
			else {
				var t = 1/get_image_fps_speed(abs(xdelta) * amount_ / friction);
				state = HURT;
				change_sprite(state, 0, t);//HURT_SPEED);
			}
		}
		view_screenshake(other.damage * 2,min(seconds_to_frames(.5), seconds_to_frames(.1)*other.damage));
	}
	xspd = xdelta * amount_;
}
