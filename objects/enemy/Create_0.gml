/// @description Init enemy

// Inherit the parent event
event_inherited();

ai = enemy_ai;
reset_enemy_move();
target = player;
desired_distance_min = 0;
desired_distance_max = ENEMY_TARGET_DISTANCE;
can_attack = true;
attack_index = 0;
attack_charge = 0;

states[IDLE] = enemy_idle_state;
states[DODGE] = player_dodge_state;
states[SWING] = player_swing_state;
states[THROWN] = player_thrown_state;
states[LAND] = player_land_state;
states[STAND] = player_stand_state;
states[DIE] = player_die_state;
states[SUICIDE] = player_suicide_state;
states[SWING_BACK] = enemy_swing_back_state;
states[SWING_CROUCH] = player_swing_crouch_state;
states[BLOCK] = player_block_state;
states[BLOCK_RELEASE] = player_block_release_state;
states[HURT] = enemy_hurt_state;
states[PARRY] = enemy_parry_state;
states[ENEMY_ATTACK_1] = enemy_attack_1_state;
states[ENEMY_ATTACK_2] = enemy_attack_2_state;
states[ENEMY_ATTACK_3] = enemy_attack_3_state;

var tex = sprite_get_texture(sprite_index,0);
texel_width = texture_get_texel_width(tex);
texel_height = texture_get_texel_height(tex);

pixel_width = shader_get_uniform(shader,"pixel_width");
pixel_height = shader_get_uniform(shader,"pixel_height");