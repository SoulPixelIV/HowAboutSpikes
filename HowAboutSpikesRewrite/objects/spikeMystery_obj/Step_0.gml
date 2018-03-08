image_speed = 0.03;

if (distance_to_object(player_obj) < 72)
{
    sprite_index = spike_spr;
}

if (distance_to_object(player_obj) >= 72)
{
    sprite_index = mysteryBlock_spr;
}

if (place_meeting(x, y, player_obj))
{
    global.hit = true;
}

