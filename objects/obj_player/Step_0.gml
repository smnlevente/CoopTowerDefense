if (keyboard_check(ord("A"))) 
{
	x -= movement_speed;
}

if (keyboard_check(ord("D")))
{
	x += movement_speed;
}

if (keyboard_check(ord("W"))) 
{
	y -= movement_speed;
}

if (keyboard_check(ord("S")))
{
	y += movement_speed;
}