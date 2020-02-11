/// @description Draw the player
var i, xx, yy;
xx = round(x);
yy = round(y);

// Draw self
shader_set(colorize_sh);
draw_sprite_ext(sprite_index,image_index,x,y,facing*image_xscale,image_yscale,image_angle,image_blend,image_alpha);
shader_reset();
