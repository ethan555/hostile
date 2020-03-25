/// @description Increase text shown

#region If we should, show more text
if (text_continue) {
	var length = string_length(text);
	if (floor(text_index) == text_index && text_index <= length) {
		var char = string_char_at(text, text_index);
		while (char == "/" && text_index <= length - 1) {
			// Handle special characters
			char = string_char_at(text, ++text_index);
			switch(char) {
				case D_CONTINUE_AT_END:
					stop_at_end = false;
					break;
				case D_STOP:
					text_continue = false;
					break;
				case D_PAUSE_SHORT:
					text_continue = false;
					alarm[0] = D_PAUSE_SHORT_TIME;
					break;
				case D_PAUSE_MEDIUM:
					text_continue = false;
					alarm[0] = D_PAUSE_MEDIUM_TIME;
					break;
				case D_PAUSE_LONG:
					text_continue = false;
					alarm[0] = D_PAUSE_LONG_TIME;
					break;
				case D_FAST:
					text_speed = D_FAST_SPEED;
					break;
				case D_MEDIUM:
					text_speed = D_MEDIUM_SPEED;
					break;
				case D_SLOW:
					text_speed = D_SLOW_SPEED;
					break;
			}
			char = string_char_at(text, ++text_index);
		}
	
		/* TODO
		// Pause after punctuation
		if (char == ",") {
			text_continue = false;
			alarm[0] = D_PAUSE_SHORT_TIME;
		}
		else if (char == ".") {
			text_continue = false;
			alarm[0] = D_PAUSE_MEDIUM_TIME;
		}
		*/
	
		text_shown += char;
	}
	text_index += text_speed;
	if (floor(text_index) == length + 1 && stop_at_end) {
		// Reached the end of the text, stop going
		text_continue = false;
		alarm[0] = -1;
		
		// If there are dialogue options, and we are the last dialogue box, show the options
		if (ds_queue_size(dialogue_queue) == 0 && ds_queue_size(dialogue_options_queue) > 0) {
			create_dialogue_options_box();
		}
	}
	else if (text_index > length + 1) {
		// Go to the next dialogue IF we are the only dialogue box
		if (ds_queue_size(dialogue_queue) > 0 && instance_number(dialogue_box) == 1) {
			create_dialogue_box();
		}
		instance_destroy();
	}
}
#endregion

#region Take input
var any = control.jump;
if (any) {
	if (text_continue || alarm[0] > -1) {
		// Should skip to end
		var length = string_length(text);
		text_index = ceil(text_index);
		while (text_index <= length) {
			var char = string_char_at(text, text_index);
			if (char == "/") {
				// Handle special characters
				text_index += 2;
				if (text_index <= length) {
					char = string_char_at(text, text_index);
				} else {
					break;
				}
			}
	
			text_shown += char;
			text_index ++;
		}
		alarm[0] = -1;
		text_continue = false;
		
		// If there are dialogue options, and we are the last dialogue box, show the options
		if (ds_queue_size(dialogue_queue) == 0 && ds_queue_size(dialogue_options_queue) > 0) {
			create_dialogue_options_box();
		}
	}
	else {
		// Continue text
		text_index ++;
		text_continue = true;
	}
}
#endregion
