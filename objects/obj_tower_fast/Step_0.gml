fire_timer--;
var nearest_enemy = instance_nearest(x, y, obj_enemy);
if (nearest_enemy != noone && point_distance(x, y, nearest_enemy.x, nearest_enemy.y) < range && fire_timer <= 0) 
{
	fire_bullet(nearest_enemy);
    fire_timer = fire_rate;
}