if (!place_free(x, y))
{
    hspeed = 0;
    sprite_index = scythe_spr;
    global.throwing = false;
}
else
{
    sprite_index = scytheRotating_spr;
    image_speed = 0.4;
}

if (hspeed > 0)
{
    if (place_meeting(x - 4, y, enemy_obj))
    {
        instance_destroy();
    }
}
if (hspeed < 0)
{
    if (place_meeting(x + 4, y, enemy_obj))
    {
        instance_destroy();
    }
}

if (hspeed > 0)
{
    if (place_meeting(x - 4, y, batBossSprite_obj))
    {
        instance_destroy();
    }
}
if (hspeed < 0)
{
    if (place_meeting(x + 4, y, batBossSprite_obj))
    {
        instance_destroy();
    }
}

if (hspeed > 0)
{
    if (place_meeting(x - 4, y, enemyFlyingCloud_obj))
    {
        instance_destroy();
    }
}
if (hspeed < 0)
{
    if (place_meeting(x + 4, y, enemyFlyingCloud_obj))
    {
        instance_destroy();
    }
}

if (place_meeting(x, y, darkSpirit_obj))
{
    global.money = global.money + 1;
}


