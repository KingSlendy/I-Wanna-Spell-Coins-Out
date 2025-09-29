repeat (irandom_range(1, 2)) {
	create_cherry(origin_x, origin_y, choose(c_red, c_dkgray), irandom_range(100, 120), irandom_range(8, 12), random_range(0.1, 0.5));
}

alarm[1] = 5;