add_trigger_key("circle1", {
	dist: new TriggerVariable(self.dist - 64, 3, attribute_loop_reverse)
});

activate_trigger("circle1");