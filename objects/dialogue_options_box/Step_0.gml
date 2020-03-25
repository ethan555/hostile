/// @description Move through options

var down = control.down_pressed, up = control.up_pressed, jump = control.jump;
option_index = modulo(option_index + (down - up), ds_list_size(option_text));

if (jump) {
	if (ds_list_size(option_script) > 0) {
		script_execute(option_script[| option_index]);
	}
	instance_destroy();
}
