///@description create_hitbox
///@param x_offset
///@param y_offset
///@param x_scale
///@param y_scale
///@param target
///@param lifespan
///@param damage
///@param xhit
///@param yhit
///@param {boolean} blockable
var i = 0;
var xoffset_ = argument[i++],
yoffset_ = argument[i++],
x_scale = argument[i++],
y_scale = argument[i++],
target_ = argument[i++],
lifespan_ = argument[i++],
damage_ = argument[i++],
xhit_ = argument[i++],
yhit_ = argument[i++],
blockable_ = argument[i++];

var hitbox_ = instance_create_depth(x + xoffset_, y + yoffset_, 0, hitbox);
with (hitbox_) {
	parent = other;
	xoffset = xoffset_;
	yoffset = yoffset_;
	image_xscale = x_scale;
	image_yscale = y_scale;
	target = target_;
	lifespan = lifespan_;
	damage = damage_;
	xhit = xhit_;
	yhit = yhit_;
	blockable = blockable_;
	alarm[0] = lifespan;
}

return hitbox_;