var c = instance_create_layer(irandom_range(200, 600), 608, "Fruits", objFireworksCoinHub);
c.sprite_index = choose(other.yellow_icon, other.green_icon, other.red_icon);
c.direction = irandom_range(55, 125);
c.speed = irandom_range(8, 12);
c.gravity = 0.1;

with (c) {
	alarm[0] = seconds_to_frames(1);
}

alarm[0] = seconds_to_frames(1);