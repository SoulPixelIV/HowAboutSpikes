y += 1.85;

if (!place_free(x, y))
{
    instance_destroy();
}
if (place_meeting(x, y, player_obj))
{
    global.hit = true;
    instance_destroy();
}

