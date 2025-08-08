var list = ds_list_create();
var count = instance_place_list(x, y, all, list, false);

for (var i = 0; i < count; i++) {
	var obj = list[| i];
	
	if (obj.id == id || obj.object_index == objFakeWall) {
		continue;
	}
	
	if (obj.object_index == objBlock) {
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

with (objBlockPieceRegion) {
	other.min_x = bbox_left;
	other.min_y = bbox_top;
	other.max_x = bbox_right;
	other.max_y = bbox_bottom;
}