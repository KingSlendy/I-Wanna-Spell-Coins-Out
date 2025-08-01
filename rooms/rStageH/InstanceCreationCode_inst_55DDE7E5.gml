add_trigger_key("circle2", {
	x: new TriggerVariable(self.x + 32 * 4, 2, attribute_loop_reverse)
});

activate_trigger("circle2");