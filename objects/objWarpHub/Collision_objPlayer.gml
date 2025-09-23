if (!visible || image_alpha < 1) {
	exit;
}

if (room != rHub) {
	var name = room_get_name(room);
	var last = string_char_at(name, string_length(name));
	
	if (string_count("Boss", name) == 0) {
		global.items.letters[ord(last) - 65] = true;
	} else {
		global.items.bosses[real(last) - 1] = true;
	}
} else {
	global.section = x div 800;
}

global.auto_save = true;
global.grav = 1;
event_inherited();