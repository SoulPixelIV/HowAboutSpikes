if (place_meeting(x, y - 6, water_obj))
{
    sprite_index = waterStill2_spr;
}
else
{
    sprite_index = waterStill_spr;
}
/*
if (!place_free(x - 6, y))
{
    if (!place_meeting(x - 6, y, waterEffect_obj))
    {
        instance_create(x - 32, y, waterEffect_obj);
    }
}
if (!place_free(x + 6, y))
{
    if (!place_meeting(x + 6, y, waterEffect_obj))
    {
        instance_create(x + 32, y, waterEffect_obj);
    }
}
if (!place_free(x, y - 6))
{
    if (!place_meeting(x, y - 6, waterEffect_obj))
    {
        instance_create(x, y - 32, waterEffect_obj);
    }
}
if (!place_free(x, y + 6))
{
    if (!place_meeting(x, y + 6, waterEffect_obj))
    {
        instance_create(x, y + 32, waterEffect_obj);
    }
}


/* */
/*  */
