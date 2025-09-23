repeat (3) {
	create_cherry(origin_x, origin_y, c_blue, spiral_dir, 7);
	spiral_dir += 360 / 3;
	spiral_dir %= 360;
}

spiral_dir += 12.4989443058;
spiral_dir %= 360;
alarm[1] = 7;