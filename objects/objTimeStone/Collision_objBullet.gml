if (image_index == 0) {
	if (!audio_is_playing(sndTimeStop)) {
		audio_play_sound(sndTimeStop, 0, false);
	}
} else {
	if (!audio_is_playing(sndTimeResume)) {
		audio_play_sound(sndTimeResume, 0, false);
	}
}

image_index = (image_index == 0) ? 1 : 0;
radius_target = (radius_target == radius_max) ? 0 : radius_max;
instance_destroy(other);

if (x < 800) {
	with (objTimeStone) {
		if (x > 800) {
			image_index = 1;
			radius_max = 400;
			radius = radius_max;
			radius_target = radius;
			break;
		}
	}
}

if (!active_before) {
	activate_trigger(trigger_key);
	var all_active = true;
	
	with (objTimeStone) {
		if (x < 800 && !is_active_trigger(trigger_key)) {
			all_active = false;
			break;
		}
	}
	
	if (all_active) {
		activate_trigger("ach0");
	}
	
	active_before = true;
} else {
	deactivate_trigger(trigger_key);
}