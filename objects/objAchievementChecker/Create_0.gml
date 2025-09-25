add_trigger_key(achievement_trigger, {
	attribute_event: new TriggerEvent(function() {
		if (string_count("Boss", room_get_name(room)) > 0 && instance_exists(objBossTemplate)) {
			return;
		}
		
		achievement_obtain(achievement_num);
		instance_destroy();
	})
});