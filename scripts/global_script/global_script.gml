function fire_bullet(target_enemy)
{   
	if (instance_exists(target_enemy)) 
	{
        var bullet = instance_create_layer(x, y, "Instances", bullet_type);
        bullet.target = target_enemy;
        bullet.move_speed = bullet_speed;
        bullet.damage = bullet_damage;
    }
}