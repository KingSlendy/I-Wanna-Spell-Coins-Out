field = function() {
	add_trigger_key("spikes1", {
		x: new TriggerVariable(self.x + 64, 2, attribute_loop_reverse)
	});
}