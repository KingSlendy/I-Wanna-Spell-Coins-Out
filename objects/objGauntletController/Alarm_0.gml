with (objCherry) {
	if (x > 2400 && y > other.y) {
		if (image_alpha == 0.4) {
			image_alpha = 1;
		} else {
			instance_destroy();
		}
	}
}

repeat (70) {
	with (instance_create_layer(0, 0, "Fruits", objCherry)) {
		image_alpha = 0.4;
		
		do {
			x = irandom_range(2448, 3152);
			y = irandom_range(208, 560);
		} until (!place_meeting(x, y, objCherry) && !place_meeting(x, y, objGauntletRed));
	}
}

audio_play_sound(sndBlockChange, 0, false);
alarm[0] = alarm_spd;
alarm_spd -= 2;
alarm_spd = max(alarm_spd, seconds_to_frames(0.8));