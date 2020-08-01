/// @description enemy_idle_state

check_movement();
check_jump();
if (state == IDLE)
	check_dodge();
if (state == IDLE)
	check_block();
if (state == IDLE) {
	//check_attack();
	if (in[attack])
		state = ENEMY_ATTACK_2;
}
