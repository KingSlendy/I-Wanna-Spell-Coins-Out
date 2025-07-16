add_trigger_key("apple1", {
	x: new TriggerVariable(self.x + 96, 1, attribute_loop_reverse)
});

activate_trigger("apple1");