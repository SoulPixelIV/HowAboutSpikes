image_speed = 0.1;

if (distance_to_object(player_obj) > 25)
{
    move_towards_point(player_obj.x, player_obj.y - 32, 3);
}
else
{
    speed = 0;
}

if (hspeed > 0)
{
    lastDir = 0;
    image_xscale = -1;
}
if (hspeed < 0)
{
    lastDir = 1;
    image_xscale = 1;
}
if (hspeed == 0)
{
    if (lastDir == 0)
    {
        image_xscale = -1;
    }
    else
    {
        image_xscale = 1;
    }
}

