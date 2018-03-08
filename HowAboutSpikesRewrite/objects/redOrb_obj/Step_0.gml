image_speed = 0.08;

if (place_meeting(x, y, player_obj))
{
    picked = true;
}

if (picked == true)
{
    if (distance_to_object(player_obj) > 20 && distance_to_object(blueOrb_obj) > 4)
    {
        move_towards_point(player_obj.x, player_obj.y - 32, 3);
    }
    else
    {
        speed = 0;
    }
}

