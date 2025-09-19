function play_music(music, loop) {
	if (!audio_is_playing(music)) {
	    audio_stop_sound(global.current_music);
		global.current_music = (!global.display.mute_music && music != -1) ? audio_play_sound(music, 0, loop) : music;
	}
}

function stop_music() {
	if (global.current_music != -1) {
	    audio_stop_sound(global.current_music);
	    global.current_music = -1;
	}
}

function get_music() {
	var music = -1;
	var loop = true;
	
	if (!instance_exists(objPlayMusic)) {
		switch (room) {
			case rTitle:
			case rFiles:
			case rOptions:
				music = bgmMain;
				break;
				
			case rHub:
				music = bgmHub;
				break;
				
			case rStageA:
			case rStageB:
			case rStageC:
			case rStageD:
			case rStageE:
			case rStageF:
			    music = bgmTrack1;
			    break;
				
			case rStageG:
			case rStageH:
			case rStageI:
			case rStageJ:
			case rStageK:
				music = bgmTrack2;
				break;
				
			case rStageL:
			case rStageM:
			case rStageN:
			case rStageO:
			case rStageP:
				music = bgmTrack3;
				break;
				
			case rStageQ:
			case rStageR:
			case rStageS:
			case rStageT:
			case rStageU:
				music = bgmTrack4;
				break;
				
			case rStageV:
			case rStageW:
			case rStageX:
			case rStageY:
				music = bgmTrack5;
				break;
		}
	} else {
		with (objPlayMusic) {
			music = self.music;
			loop = self.loop;
		}
	}

	if (music != -2) {
		play_music(music, loop);
	}
}

function toggle_music() {
	if (!global.display.mute_music) {
		get_music();  //Find and play the proper music for the current room
	} else { //Mute music
		audio_group_stop_all(audiogroup_BGM);
	}
}