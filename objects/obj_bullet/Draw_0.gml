draw_self();

if (instance_exists(target)) 
{
    draw_set_color(c_red);
    draw_line(x, y, target.x, target.y);
}
