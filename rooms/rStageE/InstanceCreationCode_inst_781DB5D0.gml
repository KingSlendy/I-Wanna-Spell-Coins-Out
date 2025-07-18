field = function() {
	add_trigger_key("apple5", {
		y: new TriggerVariable(self.y - 64, 0.5, attribute_loop_reverse)
	})
}