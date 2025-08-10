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
	
	if (bbox_left < min_x || bbox_right > max_x || bbox_top < min_y || bbox_bottom > max_y) {
		return false;
	}
	
	return true;
}

function pieces_all_placed(snd) {
	with (objBlock) {
		if (sprite_index == sprBlockage && image_alpha == 0) {
			return;
		}
	}
	
	var all_placed = true;
			
	with (objBlockPieceTemplate) {
		if (!piece_is_placeable()) {
			all_placed = false;
		}
	}
			
	if (all_placed) {
		with (objBlock) {
			if (sprite_index == sprBlockage) {
				image_alpha = 0;
			}
		}
		
		if (snd) {
			audio_play_sound(sndBlockChange, 0, false);
		}
	}
}