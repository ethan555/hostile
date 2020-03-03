/// @description Check for collisions with target

var hit_list = ds_list_create();
var hit_num = instance_place_list(x,y,target,hit_list,false);
for (var i = 0; i < hit_num; i++) {
	var hit = hit_list[| i];
	if (!ds_map_exists(hit_map, hit)) {
		// We should collide with this one, and add to the list
		ds_map_add(hit_map, hit, 1);
		deal_hit(hit);
	}
}
ds_list_destroy(hit_list);