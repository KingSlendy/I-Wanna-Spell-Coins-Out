var name = room_get_name(room);
num = ord(string_char_at(name, string_length(name))) - 65;

if (num > -1 && global.items[$ type][num]) {
	image_alpha = 0.5;
	image_speed = 0;
}