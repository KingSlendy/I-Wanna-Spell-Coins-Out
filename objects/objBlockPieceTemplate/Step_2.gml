if (!instance_exists(objPlayer)) {
	exit;
}

if (mouse_check_button_pressed(mb_left)) {
	if (!selected) {
		if (selectable && collision_point(mouse_x, mouse_y, self, true, false) != noone) {
			var player_is_outside = true;
			
			with (objPlayer) {
				if (place_meeting(x, y, objBlockPieceRegion) || place_meeting(x, y, objBlock)) {
					player_is_outside = false;
				}
			}
			
			if (player_is_outside) {
				selected_x = mouse_x - x;
				selected_y = mouse_y - y;
			
				with (objBlockPieceTemplate) {
					selectable = false;
				}
				
				with (objPlayer) {
					frozen = true;
				}
				
				with (objBlock) {
					if (sprite_index == sprBlockage) {
						image_alpha = 1;
					}
				}
			
				selected = true;
			}
		}
	} else {
		if (piece_is_placeable()) {
			with (objBlockPieceTemplate) {
				alarm[0] = 1;
			}
			
			with (objPlayer) {
				frozen = false;
			}
			
			with (objBlockPieceRegion) {
				pieces_all_placed(true);
			}
			
			save_game(false);
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
			
			with (objPlayer) {
				frozen = false;
			}
			
			save_game(false);
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