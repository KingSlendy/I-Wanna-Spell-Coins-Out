if (mouse_check_button_pressed(mb_left)) {
	if (!selected) {
		if (selectable && collision_point(mouse_x, mouse_y, self, true, false) != noone) {
			selected_x = mouse_x - x;
			selected_y = mouse_y - y;
			
			with (objBlockPieceTemplate) {
				selectable = false;
			}
			
			selected = true;
		}
	} else {
		if (piece_is_placeable()) {
			var all_placed = false;
			
			with (objBlockPieceTemplate) {
				if (!piece_is_placeable()) {
					all_placed = false;
				}
				
				alarm[0] = 1;
			}
			
			if (all_placed) {
				with (objBlockPieceTemplate) {
					alarm[0] = false;
					selectable = false;
				}
				
				with (objBlock) {
					if (sprite_index == sprBlockage) {
						instance_destroy();
					}
				}
				
				audio_play_sound(sndBlockChange, 0, false);
			}
		} else {
			x = xstart;
			y = ystart;
			
			for (var i = 0; i < array_length(objs); i++) {
				with (objs[i].id) {
					x = xstart;
					y = ystart;
				}
			}
			
			with (objBlockPieceTemplate) {
				alarm[0] = 1;
			}
		}
		
		selected = false;
	}
}

if (selected) {
	x = (mouse_x - selected_x + 16) div 32 * 32;
	y = (mouse_y - selected_y + 16) div 32 * 32;
	
	for (var i = 0; i < array_length(objs); i++) {
		var obj = objs[i];
		
		with (obj.id) {
			x = other.x + obj.diff_x;
			y = other.y + obj.diff_y;
		}
	}
}