if (!instance_exists(objPlayer) || objPlayer.on_block == null || objPlayer.hspd != 0) {
	exit;
}

if (!changing && mouse_check_button_pressed(mb_left)) {
    var mx = device_mouse_x_to_gui(0);
    var my = device_mouse_y_to_gui(0);
    
    var cr = my div slide_h;
    var cc = mx div slide_w;
	
	if (cr < 0 || cr >= slide_n || cc < 0 || cc >= slide_n || (cr == 1 && cc == 1) || (cr == 2 && cc == 1)) {
		exit;
	}
	
	var cx = cc * slide_w;
	var cy = cr * slide_h;
	
	var piece = collision_rectangle(cx, cy, cx + (slide_w - 1), cy + (slide_h - 1), [objSlidePieceBlocks, objSlidePieceSpikes], false, true);
	var player = collision_rectangle(cx, cy, cx + (slide_w - 1), cy + (slide_h - 1), objPlayer, false, true);
	
	if ((piece != noone && piece.swapped) || player != noone) {
		exit;
	}
	
    grid[# cr, cc] ^= true;
    
	var total = 0;

	for (var r = 0; r < slide_n; r++) {
	    for (var c = 0; c < slide_n; c++) {
	        if (grid[# r, c]) {
	            cells[total] = [r, c];
	            total++;
	        }
	    }
	}
	
	if (total == 0) {
		with (objPlayer) {
			frozen = false;
			still = false;
		}
		
		audio_play_sound(sndSelect, 0, false);
	}
	
	if (total == 1) {
		with (objPlayer) {
			frozen = true;
			still = true;
		}
		
		audio_play_sound(sndSelect, 0, false);
	}

	if (total == 2) {
	    for (var r = 0; r < slide_n; r++) {
	        for (var c = 0; c < slide_n; c++) {
	            grid[# r, c] = false;
	        }
	    }
    
	    total = 0;
	    var sliders = [objSlidePieceBlocks, objSlidePieceSpikes];
    
	    for (var i = 0; i < array_length(sliders); i++) {
	        var prev_x = x;
	        var prev_y = y;
        
	        var cell = cells[0];
	        x = cell[1] * slide_w;
	        y = cell[0] * slide_h;
	        var cell1 = instance_nearest(x, y, sliders[i]);
        
	        var cell = cells[1];
	        x = cell[1] * slide_w;
	        y = cell[0] * slide_h;
	        var cell2 = instance_nearest(x, y, sliders[i]);
        
	        x = prev_x;
	        y = prev_y;
        
	        with (cell1) {
	            target_x = cell2.x;
	            target_y = cell2.y;
	            active = false;
	        }
        
	        with (cell2) {
	            target_x = cell1.x;
	            target_y = cell1.y;
	            active = false;
	        }
	    }
    
	    cells = [noone, noone];
		
		with (objPlayer) {
			frozen = true;
			still = true;
		}
		
		changing = true;
		audio_play_sound(sndSwapPlace, 0, false);
		
		if (++spawn_count > 7) {
			deactivate_trigger("ach1");
		}
		
		with (objSave) {
			instance_destroy();
		}
	}
}