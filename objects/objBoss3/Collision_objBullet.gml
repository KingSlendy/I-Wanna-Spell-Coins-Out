if (!invincibility) {
	for (var i = 16; i < 800 - 16; i += 32) {
		create_cherry(i, -16, c_yellow, 270, 9.5, 0.1, 90);
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