/// @description init_particles Initialize the particle systems

globalvar part_system;
part_system = part_system_create();

globalvar part_trail, part_spark, part_dust, part_dust_large, part_flame, part_flamespark, part_smoke;

part_trail = part_type_create();
part_type_shape(part_trail,pt_shape_pixel);
part_type_alpha2(part_trail,.75,0);
part_type_color_hsv(part_trail,0,0,0,0,255,255);
part_type_speed(part_trail,0,0,.01,0);
part_type_life(part_trail,seconds_to_frames(.25),seconds_to_frames(.25));

part_spark = part_type_create();
part_type_shape(part_spark,pt_shape_pixel);
part_type_alpha2(part_spark,1,0);
part_type_color_hsv(part_spark,0,0,0,0,240,255);
part_type_direction(part_spark,0,180,.01,0);
part_type_speed(part_spark,5,10,-.5,0);
part_type_gravity(part_spark,.15,270);
part_type_life(part_spark,seconds_to_frames(.1),seconds_to_frames(.2));
part_type_step(part_spark,1,part_trail);

part_dust = part_type_create();
part_type_shape(part_dust,pt_shape_cloud);
part_type_size(part_dust,.1,.25,-.01,0);
part_type_alpha2(part_dust,1,0);
part_type_color_hsv(part_dust,0,0,0,0,240,255);
part_type_direction(part_dust,0,359,.01,0);
part_type_orientation(part_dust,0,359,.01,0,false);
part_type_speed(part_dust,0,1,.01,0);
part_type_gravity(part_dust,.01,270);
part_type_life(part_dust,seconds_to_frames(.5),seconds_to_frames(1));

part_dust_large = part_type_create();
part_type_shape(part_dust_large,pt_shape_cloud);
part_type_size(part_dust_large,.5,1,-.01,0);
part_type_alpha2(part_dust_large,1,0);
part_type_color_hsv(part_dust_large,0,0,0,0,240,255);
part_type_direction(part_dust_large,0,359,.01,0);
part_type_orientation(part_dust_large,0,359,.01,0,false);
part_type_speed(part_dust_large,2,4,-.25,0);
part_type_gravity(part_dust_large,.01,270);
part_type_life(part_dust_large,seconds_to_frames(.4),seconds_to_frames(.5));

part_flamespark = part_type_create();
part_type_shape(part_flamespark,pt_shape_pixel);
part_type_color_hsv(part_flamespark,0,0,0,0,255,255);
part_type_direction(part_flamespark,0,359,.01,1);
part_type_speed(part_flamespark,1,1,.1,0);
part_type_gravity(part_flamespark,.05,90);
part_type_life(part_flamespark,seconds_to_frames(1),seconds_to_frames(2));
part_type_step(part_flamespark,1,part_trail);
