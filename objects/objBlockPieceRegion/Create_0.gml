min_x = -infinity;
min_y = -infinity;
max_x = infinity;
max_y = infinity;

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
			break;
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