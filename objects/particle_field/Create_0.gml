/// @description Setup emitter
emitter = part_emitter_create(part_system);
particle_type = part_flamespark_slow;
part_emitter_region(part_system,emitter,bbox_left,bbox_right,bbox_top,bbox_bottom,ps_shape_rectangle,ps_distr_linear);
part_emitter_stream(part_system,emitter,particle_type,particle_number);
