/// @description Clean up sparks
ds_list_destroy(spark_list);
surface_free(spark_surface);
part_emitter_destroy(part_system,emitter);