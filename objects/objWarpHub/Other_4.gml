if (room == rHub) {
	room_to = asset_get_index($"rStage{letter}");
	
	with (objPlayer) {
		x = 400 + 800 * global.section;
	}
	
	global.pieces_j = [];
} else {
	room_to = rHub;
}