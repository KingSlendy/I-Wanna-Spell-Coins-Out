function Stage(name, secret, coins) constructor {
	self.name = name;
	self.secret = secret;
	self.coins = coins;
}

global.stage_info = [
	new Stage("Amazing", "", [0]),
	new Stage("Below", "Back", [1]),
	new Stage("Cycle", "Cover", [2]),
	new Stage("Dive", "Discover", [3]),
	new Stage("Elevate", "Effort", [4])
];