if (place_meeting(x, y - 12, player_obj))
{
    timer = timer - 1;
}
else
{
    timer = 20;
}

if (timer > 15)
{
    image_index = 0;
}
if (timer > 5 && timer < 15)
{
    image_index = 1;
}
if (timer < 5)
{
    image_index = 2;
}


if (timer <= 0)
{
    instance_deactivate_object(self);
}

