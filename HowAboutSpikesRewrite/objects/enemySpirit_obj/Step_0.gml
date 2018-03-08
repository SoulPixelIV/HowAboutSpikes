if (distance_to_object(player_obj) <= 256)
{
    move_towards_point(player_obj.x, player_obj.y, movSpeed);
}

if (place_meeting(x, y, player_obj))
{
    global.hit = true;
    instance_destroy();
}

if (place_meeting(x, y, hitbox_obj))
{
    instance_destroy();
}
if (place_meeting(x, y, scythe_obj))
{
    instance_destroy();
}

