/// @description shoot_projectile
/// @param projectile
/// @param x
/// @param y
/// @param damage
/// @param target
/// @param xspd
/// @param yspd
var i = 0;
var projectile_ = argument[i++];
var x_ = argument[i++];
var y_ = argument[i++];
var damage_ = argument[i++];
var target_ = argument[i++];
var xspd_ = argument[i++];
var yspd_ = argument[i++];

var inst = instance_create_depth(x_, y_, depth, projectile_);
with (inst) {
	if (damage_ != -1) {
		damage = damage_;
	}
	if (target_ != -1) {
		target = target_;
	}
	xspd = xspd_;
	yspd = yspd_;
	image_angle = point_direction(0,0,xspd,yspd);
	if (other != noone) {
		parent = other;
	}
}

return inst;
