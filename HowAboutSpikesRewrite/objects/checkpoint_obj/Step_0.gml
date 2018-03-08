if (distance_to_object(player_obj) < 32)
{
    showText = true;
}
else
{
    showText = false;
}

if (place_meeting(x, y, player_obj))
{
    image_index = 1;
}

