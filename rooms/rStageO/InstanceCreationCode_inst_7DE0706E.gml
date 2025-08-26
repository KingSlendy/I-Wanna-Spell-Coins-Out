add_trigger_key("circle2", {
	dist: new TriggerVariable(self.dist - 32, 2, attribute_loop_reverse)
});

activate_trigger("circle2");