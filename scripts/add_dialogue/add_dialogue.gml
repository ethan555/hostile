/// @description add_dialogue
/// @param text

var i = 0;
var text = argument[i++];

var formatted_text = "";
var index, length = string_length(text);
var num_lines = 0;
var more = false;
for (index = 1; index <= length; index = chop_index) {
	// Handle starting spaces on the line
	while (string_char_at(text, index) == " " && index <= length) {
		index ++;
	}
	// Handle chopping off words
	var end_index = min(index + max_line_length, length + 1);
	var chop_index = end_index;
	if (chop_index != length + 1) {
		while (chop_index > index && string_char_at(text, chop_index) != " ") {
			chop_index --;
		}
	}
	if (chop_index == index) {
		chop_index = end_index;
	}
	formatted_text += string_copy(text, index, chop_index - index) + "\n";
	num_lines ++;
	if (num_lines == 5 && chop_index < length + 1) {
		more = true;
		index = chop_index;
		break;
	}
}

ds_queue_enqueue(dialogue_queue,formatted_text);
if (!instance_exists(dialogue_box)) {
	create_dialogue_box();
}
if (more) {
	add_dialogue(string_copy(text, index, length + 1));
}
