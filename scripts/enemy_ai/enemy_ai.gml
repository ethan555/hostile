///@description enemy_ai

/*in[escape] = 0;
in[suicide] = 0;*/
for (var i = 0, length = array_length_1d(in); i < length; i++) {
	in[i] = false;
}

if (!move) {
	return;
}

var target_distance = abs(target.x - x);
var target_direction = sign(target.x - x);
// Move towards target
in[left] = (target_direction < 0 && target_distance > desired_distance_max)
	|| (target_direction > 0 && target_distance < desired_distance_min);// && target_distance > ENEMY_TARGET_DISTANCE;
in[right] = (target_direction > 0 && target_distance > desired_distance_max)
	|| (target_direction < 0 && target_distance < desired_distance_min);// && target_distance > ENEMY_TARGET_DISTANCE;

/*
in[down] = 0;
in[up] = 0;
*/

// Jump at the player
in[jump] = target.y < y;

// Dodge if we're scared and have the stamina
in[dodge] = 0;

// Attack if the player is in range and isn't attacking us
if (can_attack && target_distance < ENEMY_TARGET_DISTANCE) {
	in[attack] = 1;
	in[left] = target_direction < 0;
	in[right] = target_direction > 0;
	can_attack = false;
	alarm[5] = 7;
}

// Block if we have the stamina
//if (target_distance < ENEMY_TARGET_DISTANCE && (target.state == SWING || target.state == SWING_BACK) {
in[block_pressed] = target_distance < ENEMY_TARGET_DISTANCE && (target.state == SWING || target.state == SWING_BACK) && target.image_index < ATTACK_HIT_INDEX;
//}
