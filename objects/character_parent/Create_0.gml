/// @description initialize enemy
#region Health variables
hp = 5;
#endregion

#region Movement, state, and sprite variables
xspd = 0;
yspd = 0;

state = IDLE;

states[IDLE] = player_idle_state;
states[SWING] = player_swing_state;
states[THROWN] = player_thrown_state;
states[STAND] = player_stand_state;

image_speed = 0;

sprite[IDLE] = player_sp;
sprite[RUN] = player_run_sp;
sprite[SKID] = player_skid_sp;
sprite[DODGE] = player_dodge_sp;
sprite[SWING] = player_swing_sp;
sprite[SWING_JUMP] = player_swing_jump_sp;
sprite[BLOCK] = player_block_sp;
sprite[PARRY] = player_parry_sp;
sprite[CROUCH] = player_crouch_sp;
sprite[JUMP] = player_jump_sp;
sprite[HURT] = player_hurt_sp;
sprite[THROWN] = player_thrown_sp;
sprite[STAND] = player_stand_sp;
sprite[DIE] = player_die_sp;

#endregion
