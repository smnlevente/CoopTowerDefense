hp -= other.damage;
show_debug_message("Hit with damage: " +  string(other.damage));
instance_destroy(other);
if (hp <= 0) 
{
	instance_destroy();
}