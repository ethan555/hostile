/// @description  Initialize the view parent
// Create target
target = ds_map_create();
target[? "x"] = 0;
target[? "y"] = 0;

standard_width = monitorw / wmult;
standard_height = monitorh / hmult;
width = standard_width;
height = standard_height;

// Create screenshake
screenshake = 0;

// Speed
spd = .25;
