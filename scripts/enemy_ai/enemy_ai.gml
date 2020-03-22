///@description enemy_ai

/*in[escape] = 0;
in[suicide] = 0;*/


if (!move) {
	if (alarm[2] < 0) {
		alarm[2] = ENEMY_MOVE_TIMER;
	}
	return;
}
// Move towards target
in[left] = target.x < (x - ENEMY_TARGET_DISTANCE);
in[right] = target.x > (x + ENEMY_TARGET_DISTANCE);

/*
in[down] = 0;
in[up] = 0;
*/

// Jump at the player
in[jump] = target.y < y;

// Dodge if we're scared and have the stamina
in[dodge] = 0;

// Attack if the player is in range and isn't attacking us
in[attack] = 0;

// Block if we have the stamina
in[block] = 0;


