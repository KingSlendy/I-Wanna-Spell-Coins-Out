field = function() {
	add_trigger_key("apple1", {
		x: new TriggerVariable(self.x + 32, 1, attribute_loop_reverse)
	});
}