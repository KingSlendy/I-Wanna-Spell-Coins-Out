field = function() {
	add_trigger_key("apple3", {
		x: new TriggerVariable(self.x + 64, 3, attribute_loop_reverse)
	});
}