var money_color = c_white;

if (money_flash_timer > 0)
{
    if (money_flash_timer mod 10 < 5) 
	{
        money_color = money_flash_color;
    }
	
    money_flash_timer--; 
}


draw_set_color(money_color);
draw_text(20, 20, "Money: " + string(global.player_money));
draw_set_color(c_white);

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

        draw_set_color(c_white);
        draw_rectangle(btn_x, btn_y, btn_x + option_width, btn_y + option_height, false);
		var index = asset_get_index(tower.sprite);

        draw_sprite(asset_get_index(tower.sprite), 0, btn_x + option_width/2, btn_y + option_height/2);
    }
}
