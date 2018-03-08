image_angle += 25;

if (place_meeting(x, y, player_obj))
{
    global.hit = true;
}

if (!place_free(x, y))
{
    if (dir == 0)
    {
        dir = 1;
        y -= 3;
    }
    else
    {
        dir = 0;
        y += 3;
    }
}

if (dir == 0)
{
    y += 3;
}
else
{
    y -= 3;
}


