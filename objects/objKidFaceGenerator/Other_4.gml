var num = 425;
var kid_face_red = irandom(num - 1);

for (var i = 0; i < num; i++) {
	with (instance_create_layer(x, y, layer, objKidFace, {
		image_index: (i == kid_face_red) ? 0 : irandom_range(1, sprite_get_number(sprKidFace) - 1)
	})) {
		do {
			x = irandom_range(other.x, other.x + 32 * 22);
			y = irandom_range(other.y, other.y + 32 * 13);
		} until (!place_meeting(x, y, objKidFace));
	}
}