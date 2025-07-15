function Stage(name, coins) constructor {
	self.name = name;
	self.coins = coins;
}

global.stage_info = [
	new Stage("Amazing", [0]),
	new Stage("Backtrack", [1]),
	new Stage("Cherry", [2]),
	new Stage("Dive", [3])
];