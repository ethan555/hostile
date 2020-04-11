/// @description Change animation
if (sprite_index == sprite[PROJECTILE_START]) {
	change_sprite(PROJECTILE_MID,0,1);
}
else if (sprite_index == sprite[PROJECTILE_HIT]) {
	instance_destroy();
}
