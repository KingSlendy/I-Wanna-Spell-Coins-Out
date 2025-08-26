add_trigger_key("circle3", {
	attribute_event: new TriggerEvent(function() {
		instance_destroy(objs[0]);
		instance_destroy(objs[1]);
		instance_destroy(objs[2]);
	}, 1)
});

activate_trigger("circle3");