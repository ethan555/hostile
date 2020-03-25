/// @description create_dialogue_box

if (ds_queue_size(dialogue_queue) == 0) {
	return;
}

var d_box = instance_create_depth(0,0,0,dialogue_box);
with (d_box) {
	text = ds_queue_dequeue(dialogue_queue);
}

return d_box;