if (!ask_accept && ask_spikes) {
	var move = (is_pressed(global.controls.right) - is_pressed(global.controls.left));
	
	if (move != 0) {
		ask_select = (ask_select + move + array_length(ask_number)) % array_length(ask_number);
	}
	
	var scroll = (is_pressed(global.controls.up) - is_pressed(global.controls.down));
	
	if (scroll != 0) {
		ask_number[ask_select] = (ask_number[ask_select] + scroll + 10) % 10;
	}
	
	if (is_pressed(global.controls.jump)) {
		var number = "";
		
		for (var i = 0; i < array_length(ask_number); i++) {
			number += string(ask_number[i]);
		}
		
		if (real(number) == spike_red) {
			deactivate_trigger("fake2");
			activate_trigger("fake3");
			activate_trigger("fake4");

			objPlayer.frozen = false;
		} else {
			if (real(number) == spike_gray) {
				activate_trigger("ach1");
				deactivate_trigger("fake2");
				activate_trigger("fake3");
				
				objPlayer.frozen = false;
			} else {
				kill_player();
			}
		}
		
		ask_accept = true;
		io_clear();
	}
}