if (room != rHub) {
	var name = room_get_name(room);
	global.items.letters[ord(string_char_at(name, string_length(name))) - 65] = true;
} else {
	global.section = x div 800;
}

global.auto_save = true;
global.grav = 1;
event_inherited();