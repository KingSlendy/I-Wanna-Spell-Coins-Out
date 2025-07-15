field = function() {
	add_trigger_key("apple2", {
		y: new TriggerVariable(self.ystart - 64, 3, attribute_loop_reverse)
	});	
}