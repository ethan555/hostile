/// @description Init particle emitter

emitter = part_emitter_create(part_system);
emitter_left = 0;
emitter_right = 0;
emitter_top = 0;
emitter_bottom = 0;
part_emitter_region(part_system,emitter,emitter_left,emitter_right,emitter_top,emitter_bottom,ps_shape_rectangle,ps_distr_linear);
