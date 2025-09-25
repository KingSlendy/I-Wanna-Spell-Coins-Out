selectable = true;
selected = false;
selected_x = 0;
selected_y = 0;
objs = [];

function piece_is_placeable() {
	if (place_meeting(x, y, objBlockPieceTemplate)) {
		return false;
	}
	
	if (bbox_left < objBlockPieceRegion.min_x || bbox_right > objBlockPieceRegion.max_x || bbox_top < objBlockPieceRegion.min_y || bbox_bottom > objBlockPieceRegion.max_y) {
		return false;
	}
	
	return true;
}