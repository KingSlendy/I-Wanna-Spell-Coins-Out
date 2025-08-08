selectable = true;
selected = false;
selected_x = 0;
selected_y = 0;
objs = [];

min_x = -infinity;
min_y = -infinity;
max_x = infinity;
max_y = infinity;

function piece_is_placeable() {
	if (place_meeting(x, y, objBlockPieceTemplate)) {
		return false;
	}
	
	/*if (bbox_left < min_x || bbox_right > max_x || bbox_top < min_y || bbox_bottom > max_y) {
		return false;
	}*/
	
	return true;
}