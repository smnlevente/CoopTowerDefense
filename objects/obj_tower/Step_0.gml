fire_timer--;
var nearest_enemy = instance_nearest(x, y, obj_enemy);
if (nearest_enemy != noone && point_distance(x, y, nearest_enemy.x, nearest_enemy.y) < range && fire_timer <= 0) 
{
    var new_bullet = instance_create_layer(x, y, "Instances", obj_bullet);
	new_bullet.damage = damage;
    fire_timer = fire_rate;
}