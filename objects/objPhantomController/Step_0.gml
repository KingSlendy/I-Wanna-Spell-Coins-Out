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
}