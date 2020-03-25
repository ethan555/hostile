/// @description add_dialogue_options
/// @param option0_text
/// @param option0_script
/// @param option1_text
/// @param option1_script
/// @param option2_text
/// @param option2_script
/// @param option3_text
/// @param option3_script
/// @param option4_text
/// @param option4_script
/// @param option5_text
/// @param option5_script
/// @param option6_text
/// @param option6_script
/// @param option7_text
/// @param option7_script
var args = floor(argument_count/2) * 2;

for (var i = 0; i < args; i++) {
	// Text
	ds_queue_enqueue(dialogue_options_queue, argument[i++]);
	// Script
	ds_queue_enqueue(dialogue_options_queue, argument[i]);
}
if (!instance_exists(dialogue_box)) {
	create_dialogue_options_box();
}
