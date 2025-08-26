add_trigger_key("circle4", {
	dist: new TriggerVariable(self.dist - 32, 3)
});

add_trigger_key("circle5", {
	attribute_event: new TriggerEvent(function() {
		instance_destroy(self.objs[9]);
		instance_destroy(self.objs[10]);
		instance_destroy(self.objs[11]);
	}, 1)
});

activate_trigger("circle5");