event_inherited();

if (room != rHub) {
	var name = room_get_name(room);
	global.items.letters[ord(string_char_at(name, string_length(name))) - 65] = true;
}

global.auto_save = true;