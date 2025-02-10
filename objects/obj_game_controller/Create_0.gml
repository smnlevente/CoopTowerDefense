
var _force_include = [
    spr_tower_basic,
    spr_tower_fast,
    spr_tower_heavy,
    obj_tower_basic,
    obj_tower_fast,
    obj_tower_heavy
];

global.player_money = 100;
global.tower_data = undefined;
var towerDataLocation = working_directory +  "tower_data.json";
if (file_exists(towerDataLocation))
{
	var json_string = "";
	var file = file_text_open_read(towerDataLocation);
	while (!file_text_eof(file))
	{
		json_string += file_text_readln(file);
	}

	file_text_close(file);
	global.tower_data = json_parse(json_string);
}

money_flash_timer = 0;      
money_flash_duration = 30; 
money_flash_color = c_red;
selected_buildable_area = noone;

build_menu_open = false;
build_menu_x = 0;
build_menu_y = 0;