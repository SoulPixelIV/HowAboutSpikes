if (exploding = false)
{
    image_index = 0;
    image_speed = 0;
}
else
{
    if (explodeTime > 50)
    {
        image_speed = 0.1;
    }
    else
    {
        image_speed = 0.3;
    }
    explodeTime = explodeTime - 1;
}

if (place_meeting(x, y - 12, player_obj))
{
    exploding = true;
}

if (explodeTime <= 0)
{
    if (!place_meeting(x, y, destroyCooldown_obj))
    {
        instance_create(x, y, destroyCooldown_obj);
    }
    sprite_index = explosion_anim;
    instance_create(x, y, hitboxEnemyBig_obj);
    instance_deactivate_object(self);
}

