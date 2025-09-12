add_trigger_key("spike2", {
	x: new TriggerVariable(self.x + 64, 1, attribute_loop_reverse)
});

activate_trigger("spike2");