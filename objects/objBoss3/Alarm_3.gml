with (create_cherry(origin_x, origin_y, c_blue, irandom_range(45, 135), irandom_range(8, 12), 0.2)) {
	image_xscale = 2;
	image_yscale = 2;
	alarm[2] = seconds_to_frames(1);
}

alarm[3] = seconds_to_frames(0.5);