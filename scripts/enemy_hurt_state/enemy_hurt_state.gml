///@description enemy_hurt_state

check_friction();

if (xspd == 0) {
	state = IDLE;
	change_sprite(state, 0, 0);
	can_attack = false;
	alarm[5] = 10;
}