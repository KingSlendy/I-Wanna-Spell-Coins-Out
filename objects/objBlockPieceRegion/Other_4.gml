with (objBlockPieceTemplate) {
	if (hint_x != -1 && hint_y != -1) {
		piece_move(hint_x, hint_y);
	}
}

min_x = bbox_left;
min_y = bbox_top;
max_x = bbox_right;
max_y = bbox_bottom;

for (var i = 0; i < array_length(global.pieces_j); i++) {
	var piece_j = global.pieces_j[i];
	
	with (objBlockPieceTemplate) {
		if (xstart == piece_j.xstart && ystart == piece_j.ystart) {
			x = piece_j.x;
			y = piece_j.y;
		
			for (var j = 0; j < array_length(objs); j++) {
				var obj = objs[j];
		
				with (obj.id) {
					x = other.x + obj.diff_x;
					y = other.y + obj.diff_y;
				}
			}
		
			break;
		}
	}
}

pieces_all_placed(false);