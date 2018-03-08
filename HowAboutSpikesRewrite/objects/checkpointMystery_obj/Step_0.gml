global.showText2 = false;
if (distance_to_object(player_obj) < 32)
{
    global.showText2 = true;
}

if (distance_to_object(player_obj) < 72)
{
    sprite_index = checkpoint_spr;
}
if (distance_to_object(player_obj) >= 72)
{
    sprite_index = mysteryBlock_spr;
}

