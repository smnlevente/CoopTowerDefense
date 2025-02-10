if (keyboard_check(ord("A"))) 
{
	x -= speedd;
}

if (keyboard_check(ord("D")))
{
	x += speedd;
}

if (keyboard_check(ord("W"))) 
{
	y -= speedd;
}

if (keyboard_check(ord("S")))
{
	y += speedd;
}


// Place tower on mouse click
if (mouse_check_button_pressed(mb_left)) {
    instance_create_layer(mouse_x, mouse_y, "Instances", obj_tower);
}

if (mouse_check_button_pressed(mb_right)) {
    instance_create_layer(mouse_x, mouse_y, "Instances", obj_enemy);
}