function open_build_menu(x, y) 
{
    show_debug_message("Build menu opened at: " + string(x) + ", " + string(y));  // Debug message
    obj_game_controller.build_menu_open = true;
    obj_game_controller.build_menu_x = x;
    obj_game_controller.build_menu_y = y;
}