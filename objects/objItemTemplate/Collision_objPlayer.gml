if (!visible || image_alpha < 0.5 || image_blend == c_black) {
	exit;
}

if (num > -1) {
	global.items[$ type][num] = true;
}

if (global.auto_save_items) {
	save_game(false);
}

audio_play_sound(snd, 0, false);
instance_destroy();

if (object_index == objItemYellow) {
	switch (room) {
		case rStageJ:
			activate_trigger("ach1");
			break;
			
		case rStageN:
			if (is_active_trigger("ach1")) {
				activate_trigger("ach2");
			}
			break;
	}
}

if (object_index == objItemRed) {
	switch (room) {
		case rStageB: deactivate_trigger("ach1"); break;
		
		case rStageD:
			if (is_active_trigger("ach1")) {
				activate_trigger("ach2");
			}
			break;
			
		case rStageJ:
			activate_trigger("ach2");
			break;
	}
}

if (object_index == objItemRed) {
	switch (room) {
		case rStageJ:
			activate_trigger("ach3");
			break;
	}
}