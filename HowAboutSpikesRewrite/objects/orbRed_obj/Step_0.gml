image_speed = 0.1;
image_angle += 5;

if (place_meeting(x, y, player_obj))
{
    global.hit = true;
    instance_destroy();
}

if (!place_free(x, y))
{
    instance_destroy();
}

