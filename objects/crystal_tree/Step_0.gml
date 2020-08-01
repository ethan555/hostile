/// @description increment sparks
if (done) {
	return;
}
var length = ds_list_size(spark_list);
if (length == 0) {
	done = true;
}
for (var i = length - spark_num; i >= 0; i-= spark_num) {
	var xx_ = i, yy_ = i+1, size_ = i+2, dir_ = i+3, split_ = i+4;
	var xx = spark_list[| xx_];
	var yy = spark_list[| yy_];
	var size = spark_list[| size_];
	var dir = spark_list[| dir_];
	var split = spark_list[| split_] - spark_speed/power(spark_scale, 2);
	
	if (xx < 10 + 20*height/yy || xx > width - (10 + 20*height/yy) || yy < 5 || split < 0) {
		repeat(spark_num) {
			ds_list_delete(spark_list, i);
		}
		branches -= irandom(rate / size);
		continue;
	}
	
	spark_list[| xx_] = xx + dir * random(spark_speed+max(0,(rate - size) * spark_speed))*1.5;
	spark_list[| yy_] = yy - random(spark_speed+max(0, (rate - size) * spark_speed))*1.5;
	part_emitter_region(part_system,emitter,x+xx - width/2 - size * spark_scale,x+xx - width/2 + size * spark_scale,y+yy-height - size * spark_scale,y+yy-height + size * spark_scale,ps_shape_ellipse,ps_distr_linear);
	
	
	if (random(size) < chance / (size * spark_scale)) {
		create_particles(emitter,part_flamespark_slow,1);
		if (size > 1) {
			// split
			if (alarm[1] < 1 && branches < num_branches) {
				ds_list_add(spark_list,xx,yy,size-random(1),-dir, random(5)+10*spark_scale);
				spark_list[| size_] = size - random(1);
				branches += rate/size;
				alarm[1] = random(seconds_to_frames(1))*size;
			} else {
				spark_list[| dir_] = -dir;
				alarm[1] --;
			}
		} else if (random(size) < chance / (2*size * spark_scale)) {
			spark_list[| dir_] = -dir;
		} else {
			repeat(spark_num) {
				ds_list_delete(spark_list, i);
			}
			branches -= irandom(rate / size);
			continue;
		}
	}
}
