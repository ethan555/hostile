/// @description check_jump

#region Check if player should fall, or if not, is jumping
var l = instance_place(x,y+1,ledge);
var l_below = (l != noone && bbox_bottom < l.bbox_top);
if (on_land) {
	if (yspdold > LANDSPEED) {
		xspd = 0;
		state = LAND;
		change_sprite(LAND,0,0);
		alarm[1] = clamp(seconds_to_frames(yspdold/(LANDSPEED * 2)), seconds_to_frames(.25), seconds_to_frames(.5));
		emit_dust_large(20);
		create_rocks(bbox_left - 2, bbox_right + 2, bbox_top-1, bbox_top-1, 0, 5, -yspdold/2, -yspdold/4, .1, .25, 5);
		view_screenshake(1,seconds_to_frames(.2));
	} else if (in[jump]) {
	    if (in[down] && l_below) {
	        y += 1;
	    } else {
			y = floor(y);
	        yspd = -JUMPSPEED;
	    }
		change_sprite(JUMP,0,0);
		emit_dust(10);
		reset_last_pressed();
	}
} else {
	if (in[jump]) {
	    if (check_walljump()) {
			y = floor(y);
	        yspd = -WALLJUMPYSPEED;
			facing = -facing;
			xspd = WALLJUMPXSPEED * facing;
			change_sprite(JUMP,0,0);
			part_emitter_region(part_system,emitter,x-facing*6,x-facing*4,bbox_bottom,y,ps_shape_rectangle,ps_distr_linear);
			emit_dust(10);
			reset_last_pressed();
	    }
	}
	var index = 0;
	if (yspd > 0) {
		index = 1;
	}
	change_sprite(JUMP,index,0);
}
#endregion