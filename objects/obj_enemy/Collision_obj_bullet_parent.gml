hp -= other.damage;
instance_destroy(other);
if (hp <= 0) 
{
	instance_destroy();
	global.player_money += money_reward;
}