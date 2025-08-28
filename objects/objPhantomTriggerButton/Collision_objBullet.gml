if (!triggereable) {
	exit;
}

event_inherited();
visible = true;
audio_play_sound(sndPhantomTriggerButton, 0, false);