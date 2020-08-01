/// @description Draw self

shader_set(shader);
shader_set_uniform_f(pixel_width, texel_width);
shader_set_uniform_f(pixel_height, texel_height);
draw_self();