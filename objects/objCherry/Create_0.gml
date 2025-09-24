event_inherited();
fruit_sprite();

if (room == rStageL) {
	if (x > 1600) {
		image_xscale = 2;
		image_yscale = 2;
	} else {
		image_xscale = 0.5;
		image_yscale = 0.5;
	}
}

dir = 0;