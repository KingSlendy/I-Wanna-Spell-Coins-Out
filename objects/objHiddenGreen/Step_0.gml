if (visible) {
	exit;
}

if (distance_to_object(objPlayer) < 16) {
	if (alarm[0] == -1) {
		alarm[0] = 1;
	}
} else {
	alarm[0] = 0;
}

if (place_meeting(x, y, objPlayer)) {
	if (is_pressed(global.controls.shoot)) {
		visible = true;
		array_push(global.hidden_greens, $"{xstart},{ystart}");
		
		var all_visible = true;
		
		with (objHiddenGreen) {
			if (!visible) {
				all_visible = false;
				break;
			}
		}
		
		if (all_visible) {
			activate_trigger("green");
			audio_play_sound(sndItemGreenAppear, 0, false);
		}
	}
}