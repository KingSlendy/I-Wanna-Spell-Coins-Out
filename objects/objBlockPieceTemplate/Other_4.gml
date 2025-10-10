var list = ds_list_create();
var count = instance_place_list(x, y, all, list, false);

for (var i = 0; i < count; i++) {
	var obj = list[| i];
	
	if (obj.id == id || obj.object_index == objFakeWall || obj.object_index == objTriggerField || obj.object_index == objItemRed || obj.object_index == objOnlinePlayer) {
		continue;
	}
	
	if (obj.object_index == objBlock) {
		if (obj.image_xscale != 1 || obj.image_yscale != 1) {
			continue;
		}
		
		obj.visible = true;
		obj.sprite_index = sprFakeWall;
		obj.image_index = 4;
	}
	
	array_push(objs, {
		id: obj.id,
		diff_x: obj.x - x,
		diff_y: obj.y - y
	});
}

ds_list_destroy(list);