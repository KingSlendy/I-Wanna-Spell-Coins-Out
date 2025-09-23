if (room == rHub) {
	if (string_count("Boss", letter_level) == 0) {
		level = ord(letter_level) - 65;
	} else {
		level = real(string_replace(letter_level, "Boss", "")) - 1;
	}
} else {
	level = -1;
}

timer = 0;