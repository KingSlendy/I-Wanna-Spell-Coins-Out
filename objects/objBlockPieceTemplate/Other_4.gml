var list = ds_list_create();
var count = instance_place_list(x, y, all, list, false);

for (var i = 0; i < count; i++) {
	var obj = list[| i];
	
	if (obj.id == id || obj.object_index == objFakeWall || obj.object_index == objTriggerField || obj.object_index == objItemRed) {
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

with (objBlockPieceRegion) {
	other.min_x = bbox_left;
	other.min_y = bbox_top;
	other.max_x = bbox_right;
	other.max_y = bbox_bottom;
}

for (var i = 0; i < array_length(global.pieces_j); i++) {
	var piece_j = global.pieces_j[i];
	
	if (xstart == piece_j.xstart && ystart == piece_j.ystart) {
		x = piece_j.x;
		y = piece_j.y;
		
		for (var j = 0; j < array_length(objs); j++) {
			var obj = objs[j];
		
			with (obj.id) {
				x = other.x + obj.diff_x;
				y = other.y + obj.diff_y;
			}
		}
		break;
	}
}

pieces_all_placed();