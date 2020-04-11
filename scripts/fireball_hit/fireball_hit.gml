///@function fireball_hit

// Hit
change_sprite(PROJECTILE_HIT, 0, 1);
xspd = 0;
yspd = 0;
create_hitbox(
	-sprite_width/2,
	-sprite_height/2,
	bbox_right - bbox_left,
	abs(bbox_bottom - bbox_top),
	target,
	hitbox_lifespan,
	damage,
	lengthdir_x(xhit,image_angle),
	lengthdir_y(yhit,image_angle),
	blockable
);

// Play fireball audio
