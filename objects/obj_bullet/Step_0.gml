if (instance_exists(target)) 
{
    var angle = round(point_direction(x, y, target.x, target.y));
	if (abs(angle - 180) < 1) angle = 180;
    var dx = lengthdir_x(move_speed, angle);
    var dy = lengthdir_y(move_speed, angle);
    x += dx;
    y += dy;

    if (place_meeting(x, y, obj_enemy)) 
	{
        instance_destroy();
    }
} 
else 
{
    instance_destroy();
}