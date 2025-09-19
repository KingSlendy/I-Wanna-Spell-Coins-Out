function Stage(name, secret) constructor {
	self.name = name;
	self.secret = secret;
}

global.stage_info = [
	new Stage("Amazing", "Ascend"),
	new Stage("Below", "Back"),
	new Stage("Cycle", "Cover"),
	new Stage("Dive", "Deep"),
	new Stage("Elevate", "Effort"),
	new Stage("Flare", "Fleeting"),
	new Stage("Grid", "Gate"),
	new Stage("Hue", "Hex"),
	new Stage("Invert", "Intense"),
	new Stage("Jigsaw", "Jumble"),
	new Stage("Kill", "Kind"),
	new Stage("Little", "Large"),
	new Stage("Memory", "Messy"),
	new Stage("Narrow", "Noxious"),
	new Stage("Orbit", "Orion"),
	new Stage("Phantom", "Path"),
	new Stage("Quick", "Quirk"),
	new Stage("Ring", "Radial"),
	new Stage("Swap", "Swop"),
	new Stage("Time", "Thrill"),
	new Stage("Unseen", "Unknown"),
	new Stage("Vigor", "Vital"),
	new Stage("Wave", "Words"),
	new Stage("Xpress", "Xtreme"),
	new Stage("Ying", "Yang"),
	new Stage("Z", "Z")
];

#region H
function Pattern(sprite_a, sprite_b, colors) constructor {
	self.sprite_a = sprite_a;
	self.sprite_b = sprite_b;
	self.index = irandom(sprite_get_number(self.sprite_a) - 1);
	var choose_colors = array_shuffle(colors);
	self.color_a = (self.sprite_a != sprHueNothing) ? array_pop(choose_colors) : -1;
	self.color_b = (self.sprite_b != sprHueNothing) ? array_pop(choose_colors) : -1;
	
	static equals = function(pattern) {
		return (
			self.index == pattern.index &&
			self.color_a == pattern.color_a &&
			self.color_b == pattern.color_b
		);
	}
	
	static draw = function(x, y) {
		if (self.color_a != -1) {
			draw_sprite_ext(self.sprite_a, self.index, x, y, 1, 1, 0, self.color_a, 1);
		}
		
		if (self.color_b != -1) {
			draw_sprite_ext(self.sprite_b, self.index, x, y, 1, 1, 0, self.color_b, 1);
		}
		
		draw_set_color(c_black);
		draw_rectangle(x, y, x + 31, y + 31, true);
	}
}
#endregion