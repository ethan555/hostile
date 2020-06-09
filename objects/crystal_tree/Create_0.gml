/// @description Init

width = 200*spark_scale;
height = 300*spark_scale;
rate = 5;
chance = .25;

color = make_color_hsv(random(255),10,255);

var xx = width/2;
var yy = height;

spark_surface = surface_create(width, height);

spark_list = ds_list_create();
// initial spark
ds_list_add(spark_list, random(xx)+width/4, yy, irandom(rate)+rate, irandom(1)*2 - 1, random(10)+10*spark_scale);
spark_num = ds_list_size(spark_list);

num_branches = irandom(rate*5)+5;
branches = 1;

//alarm[0] = seconds_to_frames(10);
