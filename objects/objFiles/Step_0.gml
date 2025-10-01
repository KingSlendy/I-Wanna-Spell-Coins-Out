if (!is_pressed(vk_anykey)) {
	exit;
}

var length = array_length(global.difficulties);

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
	        select[menu] = (file_exists($"Data{select[menu] + 1}")) ? length - 1 : 0;
	        audio_play_sound(sndSelect, 0, false);
	    }
    
	    if (is_pressed(global.controls_menu.back)) {
	        room_goto(rTitle);
	    }
		break;
	
	case MENU_FILES.DIFFICULTY:
	    if (is_pressed(global.controls_menu.left)) {
	        select[menu]--;
	        audio_play_sound(sndMoveMenu, 0, false);
	    }
    
	    if (is_pressed(global.controls_menu.right)) {
	        select[menu]++;
	        audio_play_sound(sndMoveMenu, 0, false);
	    }
		
	    if (!file_exists($"Data{select[0] + 1}")) {
	        length--;
	    }
        
	    select[menu] += length;
	    select[menu] %= length;
    
	    if (is_pressed(global.controls_menu.accept)) {
			if (select[menu] == length - 1) {
				global.save_num = select[MENU_FILES.DATA];
				start_game(select[menu]);
			} else {
				menu = MENU_FILES.CONFIRM;
			}
	    }
    
	    if (is_pressed(global.controls_menu.back)) {
	        menu = MENU_FILES.DATA;
	    }
		break;
		
	case MENU_FILES.CONFIRM:
		if (is_pressed(global.controls_menu.accept)) {
			global.save_num = select[MENU_FILES.DATA];
		    start_game(select[MENU_FILES.DIFFICULTY]);
		}
		
		if (is_pressed(global.controls_menu.back)) {
	        menu = MENU_FILES.DIFFICULTY;
	    }
		break;
}

if (is_pressed(global.controls_menu.options)) {
    room_goto(rOptions);
}