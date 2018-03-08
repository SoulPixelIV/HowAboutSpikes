if (place_meeting(x, y, player_obj))
{
    with (player_obj)
    {
        throw = false;
    }
    instance_deactivate_object(self);
}

