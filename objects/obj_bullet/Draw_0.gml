draw_self();  // Draw the bullet normally

// Draw direction line towards the target
if (instance_exists(target)) {
    draw_set_color(c_red);
    draw_line(x, y, target.x, target.y);
}

// Draw the collision mask in red
draw_set_color(c_red);
draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false); 

draw_circle(x, y, 2, false);  // Draw a small circle at the bullet's position