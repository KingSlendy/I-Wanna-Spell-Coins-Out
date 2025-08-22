add_trigger_key("circle1", {
	x: new TriggerVariable(self.x + 450, 3, attribute_loop_reverse)
});

activate_trigger("circle1");