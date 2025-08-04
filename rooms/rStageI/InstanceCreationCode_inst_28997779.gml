field = function() {
	add_trigger_key("apple4", {
		y: new TriggerVariable(self.y + 96, 1, attribute_loop)
	});
}