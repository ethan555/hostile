/// @description Init projectile
event_inherited();

sprite[PROJECTILE_START] = fireball_init_sp;
sprite[PROJECTILE_MID] = fireball_sp;
sprite[PROJECTILE_HIT] = fireball_hit_sp;

hit_script = fireball_hit;
