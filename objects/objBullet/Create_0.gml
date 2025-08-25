var dir = 90 * abs(global.grav) - (90 * sign(global.grav));
var spd = (global.forms.telekid) ? 4 : 16;
var time = (global.slowshot) ? 800 : 40;

if (instance_exists(objPlayer)) {
	dir = (global.forms.lunarkid) ? objPlayer.image_angle + 90 : objPlayer.gravity_direction + 90 * objPlayer.xscale;
}

if (room = rStageO) {
	dir = (objPlayer.image_angle + ((objPlayer.xscale == 1) ? 0 : -180) + 360) % 360;
}

if (global.slowshot) {
	spd = 1;
}

direction = dir;
speed = spd;

if (!global.forms.telekid) {
	alarm[0] = time;
}