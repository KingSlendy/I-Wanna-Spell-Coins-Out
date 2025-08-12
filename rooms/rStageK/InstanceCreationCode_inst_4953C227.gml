field = function() {
	add_trigger_key("apple8", {
		y: new TriggerVariable(self.y + 64, 2, attribute_loop_reverse)
	});
}