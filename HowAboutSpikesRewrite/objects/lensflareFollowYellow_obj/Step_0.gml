if (instance_exists(player_obj))
{
    if (distance_to_object(player_obj) <= 150  && distance_to_object(player_obj) > 24)
    {
        sprite_index = lensflareFollowYellow_spr;
        image_angle = point_direction(x, y, player_obj.x, player_obj.y) + 90;
        image_yscale = (distance_to_object(player_obj)) / 190;
        image_xscale = 0.3;
    }
    else
    {
        sprite_index = noone;
    }
}

