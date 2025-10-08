selectable = true;
selected = false;
selected_x = 0;
selected_y = 0;
objs = [];

function piece_move(to_x, to_y) {
	x = (to_x - selected_x + 16) div 32 * 32;
	y = (to_y - selected_y + 16) div 32 * 32;
	
	for (var i = 0; i < array_length(objs); i++) {
		var obj = objs[i];
		
		with (obj.id) {
			x = other.x + obj.diff_x;
			y = other.y + obj.diff_y;
		}
	}
}

function piece_is_placeable() {
	if (place_meeting(x, y, objBlockPieceTemplate)) {
		return false;
	}
	
	if (bbox_left < objBlockPieceRegion.min_x || bbox_right > objBlockPieceRegion.max_x || bbox_top < objBlockPieceRegion.min_y || bbox_bottom > objBlockPieceRegion.max_y) {
		return false;
	}
	
	return true;
}