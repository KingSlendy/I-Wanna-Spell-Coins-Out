add_trigger_key("spike4", {
	x: new TriggerVariable(self.x + 32, 1, attribute_loop_reverse)
});

activate_trigger("spike4");