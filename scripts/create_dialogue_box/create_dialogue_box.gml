/// @description create_dialogue_box

var d_box = instance_create_depth(0,0,0,dialogue_box);
with (d_box) {
	text = ds_queue_dequeue(dialogue_queue);
}

return d_box;