// Countdown to next spawn
spawn_timer--;

// When timer hits 0, spawn a new enemy
if (spawn_timer <= 0) {
    // Spawn enemy // Get the start position of the path
    var start_x = path_get_point_x(enemy_path, 0);
    var start_y = path_get_point_y(enemy_path, 0);

    instance_create_layer(start_x, start_y, "Instances", obj_enemy);


    // Reset the spawn timer
    spawn_timer = spawn_rate;
}
