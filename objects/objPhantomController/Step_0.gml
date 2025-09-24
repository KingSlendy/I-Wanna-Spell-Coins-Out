if (phantom_track && instance_number(objPhantomPlayer) >= 15) {
	activate_trigger("ach1");
}

if (!track_info) {
	exit;
}

with (objPlayer) {
	array_push(other.player_info, {
		sprite_index,
		image_index,
		x,
		y,
		image_xscale: xscale,
		image_yscale
	});
	
	if (y > 608) {
		other.phantom_track = false;
	}
}