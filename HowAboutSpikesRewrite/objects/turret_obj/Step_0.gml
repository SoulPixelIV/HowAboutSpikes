if (distance_to_object(player_obj) < 140)
{
    image_angle = point_direction(x, y, player_obj.x, player_obj.y) - 270;
    shoot = true;
}
else
{
    shoot = false;
}

if (image_index > 5)
{
    image_index = 0;
    image_speed = 0;
}

