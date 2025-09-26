if (!invincibility) {
	for (var i = 32; i < 800 - 32; i += 16) {
		create_cherry(0, i, c_white, 0, 10.5, 0.2, 180);
	}
	
	for (var i = 32; i < 800 - 32; i += 16) {
		create_cherry(800, i, c_white, 180, 10.5, 0.2, 0);
	}
}

if (hp <= 12 && hp >= 8 && alarm[2] == -1) {
	alarm[1] = 0;
	alarm[2] = seconds_to_frames(1);
}

if (hp <= 7 && alarm[3] == -1) {
	alarm[2] = 0;
	alarm[3] = seconds_to_frames(1);
}

event_inherited();