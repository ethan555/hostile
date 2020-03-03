/// @description Draw the player
var i, xx, yy;
xx = round(x);
yy = round(y);

// Draw self
shader_set(colorize_sh);
draw_sprite_ext(sprite_index,image_index,x,y,facing*image_xscale,image_yscale,image_angle,image_blend,image_alpha);
/*shader_reset();

shader_set(weapon_shader);*/
if (weapon_sprite_index != SWORD_NONE) {
	var wx = weapon_x, wy = weapon_y;
	if (!on_land) {
		wx = weapon_x_jumping;
		wy = weapon_y_jumping;
	} else if (state == SWING_CROUCH) {
		wx = weapon_x_crouching;
		wy = weapon_y_crouching;
	}
	draw_sprite_ext(weapon_sprite[weapon_sprite_index],image_index,x+facing*wx,y+wy,facing*image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}
shader_reset();