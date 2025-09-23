if (!invincibility) {
	var rnd = irandom(359);

	for (var i = 0; i < 360; i += 360 / 15) {
		create_cherry(origin_x, origin_y, #FFC0CB, i + rnd, 5);
	}
}

if (hp <= 8 && hp >= 5 && alarm[2] == -1) {
	alarm[1] = 0;
	alarm[2] = 1;
}

if (hp <= 4 && alarm[3] == -1) {
	alarm[2] = 0;
	alarm[3] = 1;
}

event_inherited();