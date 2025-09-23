#region Stages
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
	new Stage("Zero", "Zone")
];
#endregion

#region Items
function item_count(array) {
	return array_length(array_filter(array, function(x) { return (x); }));
}

function item_total(array) {
	return (array_length(array));
}

function item_all(array) {
	return (item_count(array) == item_total(array));
}
#endregion

#region Bosses
function create_cherry(x, y, blend = c_white, dir = 0, spd = 0, grav = 0, grav_dir = 270) {
	var f = instance_create_layer(x, y, "Fruits", objCherry);
	f.image_blend = blend;
	f.direction = dir;
	f.speed = spd;
	f.gravity = grav;
	f.gravity_direction = grav_dir;
	
	return f;
}
#endregion

#region Achievements
enum ACHIEVEMENTS {
	A_LETTER,
	ALL_LETTERS,
	A_YELLOW,
	ALL_YELLOWS,
	A_GREEN,
	ALL_GREENS,
	A_RED,
	ALL_REDS
}

function achievement_obtain(num) {
	global.items.achievements[num] = true;
}
#endregion