/// @description player_idle_state

check_movement();
check_jump();
check_suicide();
if (state == IDLE)
	check_dodge();
if (state == IDLE)
	check_attack();
