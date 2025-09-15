add_trigger_key("gauntlet", {
	attribute_event: new TriggerEvent(function() {
		alarm[0] = alarm_spd;
	}, 1)
});