/// @description Draw trees

if (!surface_exists(spark_surface))
	spark_surface = surface_create(width, height);

surface_set_target(spark_surface);

// Fade out
gpu_set_blendmode(bm_subtract);
draw_set_color(color);//c_dkgray);
draw_set_alpha(.00000);
draw_rectangle(0, 0, width, height, false);
draw_set_alpha(1);
gpu_set_blendmode(bm_normal);

//gpu_set_blendmode(bm_add);
draw_set_alpha(1);
for (var i = 0, length = ds_list_size(spark_list); i < length; i += spark_num) {
	var xx_ = i, yy_ = i+1, size_ = i+2, dir_ = i+3;
	var xx = spark_list[| xx_];
	var yy = spark_list[| yy_];
	var size = spark_list[| size_];
	var dir = spark_list[| dir_];
	
	//draw_circle(xx, yy, random(size/2)+size, false);
	//draw_rectangle(xx - size, yy - size, xx + size, yy + size, false);
	draw_set_color(c_black);
	draw_circle(xx, yy, size * spark_scale, false);
	draw_set_color(color);
	draw_circle(xx, yy, size * spark_scale, true);
}

//gpu_set_blendmode(bm_normal);

//gpu_set_blendmode(bm_normal);
draw_set_alpha(1);
surface_reset_target();
draw_surface(spark_surface, x - width/2, y - height);
