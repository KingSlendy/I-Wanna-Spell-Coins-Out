field = function() {
	add_trigger_key("apple0", {
		x: new TriggerVariable(self.x + 64, 2, attribute_loop_reverse)
	});
}