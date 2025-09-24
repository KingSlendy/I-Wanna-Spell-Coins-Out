if (!instance_exists(objPlayer) || words_solved) {
	exit;
}

if (is_pressed(global.controls.shoot)) {
	var cell_r = (objPlayer.y - y) div 32;
	var cell_c = (objPlayer.x - x) div 32;
	
	if (cell_r < 0 || cell_r >= size || cell_c < 0 || cell_c >= size) {
		exit;
	}
	
	var cell = grid[# cell_r, cell_c];
	
	if (cell_origin == null) {
		cell_origin = cell;
		cell_origin.selected = true;
	} else {
		if (cell.row == cell_origin.row && cell.col == cell_origin.col) {
			cell_origin = null;
		} else {
			cell_target = cell;
			
			var step_row = cell_target.row - cell_origin.row;
			var step_col = cell_target.col - cell_origin.col;
			
			if ((step_row == 0 && step_col != 0) || (step_col == 0 && step_row != 0) || (abs(step_row) == abs(step_col))) {
				var check_row = cell_origin.row;
				var check_col = cell_origin.col;
				var move_row = sign(step_row);
				var move_col = sign(step_col);
				var check_word = "";
				var check_cells = [];
				
				while (true) {
					var check_cell = grid[# check_row, check_col];
					check_word += check_cell.letter;
					array_push(check_cells, check_cell);
					
					if (check_row == cell_target.row && check_col == cell_target.col) {
						break;
					}
					
					check_row += move_row;
					check_col += move_col;
				}
				
				if (array_contains(words, check_word)) {
					for (var i = 0; i < array_length(check_cells); i++) {
						check_cells[i].discover = true;
					}
					
					array_push(words_discover, check_word);
					
					if (array_length(words_discover) == array_length(words)) {
						words_solved = true;
						alarm[0] = 0;
						activate_trigger("fake2");
						audio_play_sound(sndBlockChange, 0, false);
						
						if (is_active_trigger("ach1")) {
							activate_trigger("ach2");
						}
					}
				}
				
				cell_origin.selected = false;
				cell_origin = null;
				cell_target = null;
			} else {
				cell_target = null;
			}
		}
	}
}