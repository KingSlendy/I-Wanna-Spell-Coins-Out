/*var num = 500;
var kid_face_red = irandom(num - 1);
var face_pos_used = [];

for (var i = 0; i < num; i++) {
	var face_x, face_y, face_pos;
	
	do {
		face_x = irandom_range(x, x + 32 * 22);
		face_y = irandom_range(y, y + 32 * 13);
		face_pos = $"{face_x},{face_y}";
	} until (!array_contains(face_pos_used, face_pos));
	
	array_push(face_pos_used, face_pos);
	instance_create_layer(face_x, face_y, layer, objKidFace, {
		image_index: irandom_range((i == kid_face_red) ? 0 : 1, sprite_get_number(sprKidFace) - 1),
		hspeed: random_range(0.1, 1) * choose(1, -1),
		vspeed: random_range(0.1, 1) * choose(1, -1)
	});
}*/

var num = 425;
var kid_face_red = irandom(num - 1);

for (var i = 0; i < num; i++) {
	with (instance_create_layer(x, y, layer, objKidFace, {
		image_index: irandom_range((i == kid_face_red) ? 0 : 1, sprite_get_number(sprKidFace) - 1)
		//hspeed: random_range(0.1, 1) * choose(1, -1),
		//vspeed: random_range(0.1, 1) * choose(1, -1)
	})) {
		do {
			x = irandom_range(other.x, other.x + 32 * 22);
			y = irandom_range(other.y, other.y + 32 * 13);
		} until (!place_meeting(x, y, objKidFace));
	}
}