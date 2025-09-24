if (state == 1) {
	image_alpha += 0.04;
	
	if (image_alpha >= 1) {
		image_alpha = 1;
		state = 0;
		alarm[1] = seconds_to_frames(2);
	}
} else if (state == -1) {
	image_alpha -= 0.03;
	
	if (image_alpha <= 0) {
		instance_destroy();
	}
}