if (distance_to_object(player_obj) < 64 && flying == false)
{
    flying = true;
    if (random(10) >= 5)
    {
        move_towards_point(4300, -450, movSpeed);
        image_xscale = -1;
    }
    else
    {
        move_towards_point(-1000, -450, movSpeed);   
        image_xscale = 1;
    }
}

if (flying == true)
{
    sprite_index = bird_anim;
    image_speed = 0.1;
    if (image_index > image_number)
    {
        image_index = 0;
    }
}


