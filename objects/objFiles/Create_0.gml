datas = [];

for (var i = 0; i < global.total_saves; i++) {
	var exists = file_exists($"Data{i + 1}");
	
    if (exists) {
        global.save_num = i;
        load_game(false);
    } else {
		cleanup_game();
	}
	
	datas[i] = {
		difficulty: (exists) ? global.difficulties[global.difficulty] : "No Data",
		deaths: global.deaths,
		time: global.time,
		clear: global.clear,
		items: global.items
	};
}

cleanup_game();

enum MENU_FILES {
	DATA,
	DIFFICULTY
}

menu = MENU_FILES.DATA;
select = array_create(2, 0);
spacing = 16 * 10;