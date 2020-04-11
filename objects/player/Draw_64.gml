/// @description Draw the player stats

var window_height = display_get_gui_height();
var window_width = display_get_gui_width();

/*shader_set(aurora_sh);
var time = shader_get_uniform(aurora_sh,"time");
shader_set_uniform_f(time,current_time * .1 * (1/1000));
var resolution = shader_get_uniform(aurora_sh,"resolution");
var res_array;
res_array[0] = window_width * 4;
res_array[1] = window_height * 4;
shader_set_uniform_f_array(resolution,res_array);
draw_set_color(c_white);
draw_rectangle(0,0,window_width,window_height, false);
shader_reset();*/

//Don't forget to reset the alpha
draw_set_alpha(1);
