with (create_cherry(400, 608, c_white, irandom_range(55, 125), irandom_range(8, 12), 0.1)) {
	sprite_index = choose(other.yellow_icon, other.green_icon, other.red_icon);
	image_alpha = 0.5;
	alarm[0] = seconds_to_frames(1);
}

alarm[0] = seconds_to_frames(1);