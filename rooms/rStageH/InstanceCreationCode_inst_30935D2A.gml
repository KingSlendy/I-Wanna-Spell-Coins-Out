field = function() {
	add_trigger_key("apple1", {
		y: new TriggerVariable(self.y - 128, 2, attribute_loop,, function() {
			if (self.y == self.ystart) {
				self.layer = layer_get_id((self.layer == layer_get_id("Fruits_Red")) ? "Fruits_Blue" : "Fruits_Red");
			}
			
			return true;
		})
	});
}