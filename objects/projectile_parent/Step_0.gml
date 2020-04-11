/// @description Collision
if (instance_place(x,y,physics_parent)) {
	// Explode
	script_execute(hit_script);
}
