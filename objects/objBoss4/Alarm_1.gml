var rnd = irandom(359);

for (var i = 0; i < 360; i += 360 / 7) {
	with (create_cherry(origin_x, origin_y, c_purple, i + rnd, 6)) {
		dir = 1;
	}
}

for (var i = 0; i < 360; i += 360 / 7) {
	with (create_cherry(origin_x, origin_y, c_fuchsia, i + rnd, 6)) {
		dir = -1;
	}
}

alarm[1] = seconds_to_frames(1);