/// @description Initialize variables
event_inherited();

#region Health variables
hp = 5;
#endregion

#region Movement, state, and sprite variables
last_pressed = noone;
last_pressed_timer = 0;
last_pressed_time = 5;

xspd = 0;
yspd = 0;

var i = 0;
escape = i++;
suicide = i++;
left = i++;
right = i++;
down = i++;
up = i++;
jump = i++;
dodge = i++;
attack = i++;
block = i++;

in[escape] = 0;
in[suicide] = 0;
in[left] = 0;
in[right] = 0;
in[down] = 0;
in[up] = 0;
in[jump] = 0;
in[dodge] = 0;
in[attack] = 0;
in[block] = 0;

state = IDLE;

states[IDLE] = player_idle_state;
states[DODGE] = player_dodge_state;
states[SWING] = player_swing_state;
states[THROWN] = player_thrown_state;
states[LAND] = player_land_state;
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
sprite[LAND] = player_crouch_sp;
sprite[STAND] = player_stand_sp;
sprite[DIE] = player_die_sp;
#endregion

#region Room variables
last_room = room;
door_number = -1;
#endregion
