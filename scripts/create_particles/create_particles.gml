/// @description create_particles
/// @param emitter
/// @param part_type
/// @param number

var i = 0;
var emitter = argument[i++];
var part_type = argument[i++];
var number = argument[i++];

part_emitter_burst(part_system,emitter,part_type,number);
