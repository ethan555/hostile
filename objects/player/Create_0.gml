/// @description Initialize variables
event_inherited();

#region Health variables
hp = PLAYER_HEALTH;
#endregion

#region Movement, state, and sprite variables
last_pressed = noone;
last_pressed_timer = 0;
last_pressed_time = LAST_PRESSED_TIME;

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
block_pressed = i++;

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
in[block_pressed] = 0;

on_land = check_land();
crouching = false;

state = IDLE;

states[IDLE] = player_idle_state;
states[DODGE] = player_dodge_state;
states[SWING] = player_swing_state;
states[THROWN] = player_thrown_state;
states[LAND] = player_land_state;
states[STAND] = player_stand_state;
states[DIE] = player_die_state;
states[SUICIDE] = player_suicide_state;
states[SWING_BACK] = player_swing_back_state;
states[SWING_CROUCH] = player_swing_crouch_state;
states[BLOCK] = player_block_state;
states[BLOCK_RELEASE] = player_block_release_state;
states[HURT] = player_hurt_state;
states[PARRY] = player_parry_state;

image_speed = 0;

sprite[IDLE] = player_sp;
sprite[RUN] = player_run_sp;
sprite[SKID] = player_skid_sp;
sprite[DODGE] = player_dodge_sp;
sprite[SWING] = player_swing_sp;
sprite[SWING_JUMP] = player_swing_jump_sp;
sprite[SWING_CROUCH] = player_swing_crouch_sp;
sprite[BLOCK] = player_block_sp;
sprite[BLOCK_RELEASE] = player_block_release_sp;
sprite[PARRY] = player_parry_sp;
sprite[CROUCH] = player_crouch_sp;
sprite[JUMP] = player_jump_sp;
sprite[HURT] = player_hurt_sp;
sprite[THROWN] = player_thrown_sp;
sprite[LAND] = player_crouch_sp;
sprite[STAND] = player_stand_sp;
sprite[DIE] = player_die_sp;
sprite[SUICIDE] = player_suicide_sp;
sprite[SUICIDE_JUMP] = player_suicide_jump_sp;
sprite[SWING_BACK] = player_swing_back_sp;

weapon_sprite_index = SWORD_NONE;
weapon_sprite[SWORD_SWING] = sword_swing_sp;
weapon_sprite[SWORD_SWING_BACK] = sword_swing_back_sp;
weapon_sprite[SWORD_SUICIDE] = sword_swing_suicide_sp;
weapon_sprite[SWORD_SWING_CROUCH] = sword_swing_crouch_sp;
weapon_sprite[SWORD_BLOCK] = sword_block_sp;
weapon_sprite[SWORD_PARRY] = sword_parry_sp;
weapon_sprite[SWORD_PARRY_BACK] = sword_parry_back_sp;

weapon_x_standing = 7;
weapon_y_standing = -10;
weapon_x_jumping = 7;
weapon_y_jumping = -14;
weapon_x_crouching = 5;
weapon_y_crouching = 0;
weapon_x = weapon_x_standing;
weapon_y = weapon_y_standing;

weapon_image_index = 0;
weapon_image_speed = 0;
weapon_shader = colorize_sh;

var tex = sprite_get_texture(sprite_index,0);
texel_width = texture_get_texel_width(tex);
texel_height = texture_get_texel_height(tex);

pixel_width = shader_get_uniform(shader,"pixel_width");
pixel_height = shader_get_uniform(shader,"pixel_height");
#endregion

#region Room variables
last_room = room;
door_number = -1;
#endregion
