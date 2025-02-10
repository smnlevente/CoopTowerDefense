if (build_menu_open) 
{
    var option_width = 48; 
    var option_height = 48;
    var spacing = 10;

    for (var i = 0; i < array_length(global.tower_data.towers); i++) 
	{
		var tower = global.tower_data.towers[i];
        var btn_x = build_menu_x + (i * (option_width + spacing));
        var btn_y = build_menu_y;

        if (mouse_x > btn_x && mouse_x < btn_x + option_width && mouse_y > btn_y && mouse_y < btn_y + option_height) 
		{
            if (global.player_money >= tower.cost) 
			{
                instance_create_layer(build_menu_x, build_menu_y, "Instances", asset_get_index(tower.object));
                global.player_money -= tower.cost;
				with (selected_buildable_area) 
				{
		            instance_destroy();
		        }
				
            } else 
			{
				money_flash_timer = money_flash_duration;
            }

            build_menu_open = false;
			selected_buildable_area = noone;
            break;
        }
    }

    // Close the menu if clicked outside
    if (!point_in_rectangle(mouse_x, mouse_y, build_menu_x, build_menu_y, build_menu_x + (array_length(global.tower_data.towers) * (option_width + spacing)), build_menu_y + option_height)) 
	{
        build_menu_open = false;
		selected_buildable_area = noone;
    }
}