add_trigger_key(achievement_trigger, {
	attribute_event: new TriggerEvent(function() {
		achievement_obtain(achievement_num);
		instance_destroy();
	}, 1)
});