/// @description create_dialogue_options_box

// Only want complete dialogue/script pairs
var d_o_box = instance_create_depth(0,0,0,dialogue_options_box);
with (d_o_box) {
	while (ds_queue_size(dialogue_options_queue) > 1) {
		ds_list_add(option_text, ds_queue_dequeue(dialogue_options_queue));
		ds_list_add(option_script, ds_queue_dequeue(dialogue_options_queue));
	}
}

return d_o_box;