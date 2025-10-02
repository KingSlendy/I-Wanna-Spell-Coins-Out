if (!is_pressed(vk_anykey)) {
	exit;
}

var length = array_length(global.difficulties);
var save_exists = file_exists($"Data{select[MENU_FILES.DATA] + 1}");

switch (menu) {
	case MENU_FILES.DATA:
	    if (is_pressed(global.controls_menu.up)) {
	        select[menu]--;
	        audio_play_sound(sndMoveMenu, 0, false);
	    }
        
	    if (is_pressed(global.controls_menu.down)) {
	        select[menu]++;
	        audio_play_sound(sndMoveMenu, 0, false);
	    }

	    select[menu] += global.total_saves;
	    select[menu] %= global.total_saves;
    
	    if (is_pressed(global.controls_menu.accept)) {
			menu = MENU_FILES.DIFFICULTY;
	        select[menu] = (save_exists) ? length - 1 : 0;
	        audio_play_sound(sndSelectMenu, 0, false);
	    }
    
	    if (is_pressed(global.controls_menu.back)) {
	        room_goto(rTitle);
			audio_play_sound(sndCancelMenu, 0, false);
	    }
		break;
	
	case MENU_FILES.DIFFICULTY:
		if (save_exists) {
		    if (is_pressed(global.controls_menu.left)) {
		        select[menu]--;
		        audio_play_sound(sndMoveMenu, 0, false);
		    }
    
		    if (is_pressed(global.controls_menu.right)) {
		        select[menu]++;
		        audio_play_sound(sndMoveMenu, 0, false);
		    }
		}
		
	    if (!save_exists) {
	        length--;
	    }
        
	    select[menu] += length;
	    select[menu] %= length;
    
	    if (is_pressed(global.controls_menu.accept)) {
			if (select[menu] == length - 1 || !save_exists) {
				global.save_num = select[MENU_FILES.DATA];
				start_game(select[menu]);
				audio_play_sound(sndSelectMenu, 0, false);
			} else {
				menu = MENU_FILES.CONFIRM;
				audio_play_sound(sndSelectMenu, 0, false);
			}
	    }
    
	    if (is_pressed(global.controls_menu.back)) {
	        menu = MENU_FILES.DATA;
			audio_play_sound(sndCancelMenu, 0, false);
	    }
		break;
		
	case MENU_FILES.CONFIRM:
		if (is_pressed(global.controls_menu.accept)) {
			global.save_num = select[MENU_FILES.DATA];
		    start_game(select[MENU_FILES.DIFFICULTY]);
			audio_play_sound(sndSelectMenu, 0, false);
		}
		
		if (is_pressed(global.controls_menu.back)) {
	        menu = MENU_FILES.DIFFICULTY;
			audio_play_sound(sndSelectMenu, 0, false);
	    }
		break;
}

if (is_pressed(global.controls_menu.options)) {
    room_goto(rOptions);
	audio_play_sound(sndSelectMenu, 0, false);
}