if (place_meeting(x, y, player_obj))
{
    global.hit = true;
    instance_destroy();
}

if (invincible == false)
{
    if (!place_free(x, y))
    {
        instance_destroy();
    }
}


