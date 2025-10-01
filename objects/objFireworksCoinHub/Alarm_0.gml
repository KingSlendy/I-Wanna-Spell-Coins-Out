var rnd = irandom(360);
	
for (var i = 0; i < 360; i += 360 / 8) {
	var c = instance_create_layer(x, y, "Fruits", objFireworksCoinHub);
	c.sprite_index = sprite_index;
	c.direction = i;
	c.speed = 6;
	c.gravity = 0.1;
	
	with (c) {
		alarm[0] = 0;
	}
}
		
instance_destroy();