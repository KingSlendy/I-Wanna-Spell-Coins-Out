var rnd = irandom(359);

for (var i = 0; i < 360; i += 360 / 10) {
	create_cherry(origin_x, origin_y, c_red, i + rnd, 5);
}

alarm[1] = 25;