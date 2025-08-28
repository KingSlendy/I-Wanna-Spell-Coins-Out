if (image_index == 1) {
	exit;	
}

triggereable = true;
event_perform(ev_collision, objBullet);
triggereable = false;