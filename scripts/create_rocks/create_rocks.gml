/// @description create_rocks
/// @param x1
/// @param x2
/// @param y1
/// @param y2
/// @param xspd1
/// @param xspd2
/// @param yspd1
/// @param yspd2
/// @param scale1
/// @param scale2
/// @param number

var i = 0;
var x1 = argument[i++],
x2 = argument[i++],
y1 = argument[i++],
y2 = argument[i++],
xspd1 = argument[i++],
xspd2 = argument[i++],
yspd1 = argument[i++],
yspd2 = argument[i++],
scale1 = argument[i++],
scale2 = argument[i++],
number = argument[i++]
;

var xdist = abs(x2 - x1)/2;
var xavg = (x2 + x1) / 2;
for (i = 0; i < number; i ++) {
	var r = instance_create_depth(random_range(x1,x2),random_range(y1,y2),ROCK_DEPTH,rock);
	with (r) {
		var xmin = -xspd1 * (xavg - x)/xdist;
		var xmax = -xspd2 * (xavg - x)/xdist;
		xspd = random_range(xmin,xmax);
		yspd = random_range(yspd1,yspd2);
		
		image_xscale = random_range(scale1,scale2);
		image_yscale = image_xscale;
	}
}
