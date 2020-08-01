/// @description Draw the character
var i, xx, yy;
xx = round(x) + (random(2) - 1) * vibrate;
yy = round(y);

// Draw self
shader_set(shader);

shader_set_uniform_f(pixel_width, texel_width);
shader_set_uniform_f(pixel_height, texel_height);

draw_sprite_ext(sprite_index,image_index,xx,yy,facing*image_xscale,image_yscale,image_angle,image_blend,image_alpha);

shader_reset();
shader_set(weapon_shader);
if (weapon_sprite_index != SWORD_NONE) {
	var wx = weapon_x, wy = weapon_y;
	if (!on_land) {
		wx = weapon_x_jumping;
		wy = weapon_y_jumping;
	} else if (state == SWING_CROUCH) {
		wx = weapon_x_crouching;
		wy = weapon_y_crouching;
	}
	draw_sprite_ext(weapon_sprite[weapon_sprite_index],image_index,xx+facing*wx,yy+wy,facing*image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}
shader_reset();

if (debug) {
	draw_set_color(c_white);
	draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
}
