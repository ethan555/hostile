/// @description Draw the player
var i, xx, yy;
xx = round(x);
yy = round(y);

// Draw self
shader_set(colorize_sh);
draw_sprite_ext(sprite_index,image_index,xx,yy,facing*image_xscale,image_yscale,image_angle,image_blend,image_alpha);
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
	draw_sprite_ext(weapon_sprite[weapon_sprite_index],image_index,xx+facing*wx,yy+wy,facing*image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}
shader_reset();

if (debug) {
	draw_set_color(c_white);
	draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
	
	/*shader_set(aurora_sh);
	var time = shader_get_uniform(aurora_sh,"time");
	shader_set_uniform_f(time,current_time * .1 * (1/1000));
	var resolution = shader_get_uniform(aurora_sh,"resolution");
	var rec_width = display_get_gui_width() * 4, rec_height = display_get_gui_height() * 4;
	var res_array;
	res_array[0] = rec_width;
	res_array[1] = rec_height;
	shader_set_uniform_f_array(resolution,res_array);
	draw_set_color(c_white);
	draw_rectangle(0,0,rec_width,rec_height, false);
	shader_reset();*/
}