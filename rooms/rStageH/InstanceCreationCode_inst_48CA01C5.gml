add_trigger_key("circle1", {
	x: new TriggerVariable(self.x - 32 * 4, 2, attribute_loop_reverse)
});

activate_trigger("circle1");