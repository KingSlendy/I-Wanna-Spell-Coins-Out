field = function() {
	add_trigger_key("fake2", {
		y: new TriggerVariable(self.y + 64, 1, attribute_loop_reverse)
	});
}