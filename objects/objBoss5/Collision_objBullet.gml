if (!invincibility) {
	var rnd = irandom(32);
	
	for (var i = 16; i < 800 - 16; i += 64) {
		create_cherry(i + rnd, 16, c_white, 270, 8);
	}
}

if (hp <= 12 && hp >= 9 && alarm[2] == -1) {
	alarm[1] = 0;
	alarm[2] = seconds_to_frames(1);
}

if (hp <= 8 && alarm[3] == -1) {
	alarm[2] = 0;
	alarm[3] = seconds_to_frames(1);
}

event_inherited();