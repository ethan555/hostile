/// @description Draw with shader

shader_set(shader);
shader_set_uniform_f(time,current_time * aurora_speed * (1/1000));
var res_array;
res_array[0] = sprite_w;//sprite_get_width(sprite_index) * 4;//display_get_gui_width() * 4;//sprite_get_width(sprite_index);//sprite_width;
res_array[1] = sprite_h;//sprite_get_height(sprite_index) * 4;//display_get_gui_height() * 4;//sprite_get_height(sprite_index);// sprite_height;
//res_array[0] = display_get_gui_width();//display_get_gui_width() * 4;//sprite_get_width(sprite_index);//sprite_width;
//res_array[1] = display_get_gui_height();//display_get_gui_height() * 4;//sprite_get_height(sprite_index);// sprite_height;

//v_res_array[0] = display_get_gui_width() * 4;//sprite_get_width(sprite_index);
//v_res_array[1] = display_get_gui_height() * 4;//sprite_get_height(sprite_index);
shader_set_uniform_f_array(resolution, res_array);
//shader_set_uniform_f_array(v_resolution, res_array);
shader_set_uniform_f(pixel_width, texel_width);
shader_set_uniform_f(pixel_height, texel_height);
draw_self();
image_angle += .1;
x = player.x + lengthdir_x(10, image_angle);
y = player.y + lengthdir_y(10, image_angle);
shader_reset();
