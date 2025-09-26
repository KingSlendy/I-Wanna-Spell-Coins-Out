if (!invincibility) {
	repeat (irandom_range(15, 25)) {
		create_cherry(origin_x, origin_y, c_purple, irandom(359), irandom_range(4, 6));
	}
}

if (hp <= 9 && hp >= 7 && alarm[2] == -1) {
	alarm[1] = 0;
	alarm[2] = seconds_to_frames(1);
}

if (hp <= 6 && alarm[3] == -1) {
	alarm[2] = 0;
	alarm[3] = 1;
}

event_inherited();