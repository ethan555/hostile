/// @description Collision

part_emitter_region(part_system,emitter,x-1,x+1,y-1,y+1,ps_shape_ellipse,ps_distr_gaussian);

var collide = instance_place(x,y,physics_parent);
if (!hit && collide != noone && !object_is_ancestor(collide.object_index, projectile_parent) && collide != parent) {
	// Explode
	script_execute(hit_script);
	hit = true;
}
