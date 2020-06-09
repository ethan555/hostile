/// @description Draw with shader

shader_set(shader);
shader_set_uniform_f(time,current_time * aurora_speed * (1/1000));
var res_array;
res_array[0] = sprite_w;
res_array[1] = sprite_h;
shader_set_uniform_f_array(resolution, res_array);
shader_set_uniform_f(pixel_width, texel_width);
shader_set_uniform_f(pixel_height, texel_height);
draw_self();
image_angle += .1;
x = player.x + lengthdir_x(10, image_angle);
y = player.y + lengthdir_y(10, image_angle);
shader_reset();
