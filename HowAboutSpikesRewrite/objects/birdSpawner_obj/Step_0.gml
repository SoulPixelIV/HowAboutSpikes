if (birdNumber > 0)
{
    if (instance_exists(snowBlock_obj))
    {
        blockID = instance_find(snowBlock_obj, irandom(instance_number(snowBlock_obj) - 1));
        instance_create(blockID.x + random_range(-16,16), blockID.y - 19, bird_obj);
    }
    if (instance_exists(checkpoint_obj))
    {
        blockID = instance_find(checkpoint_obj, irandom(instance_number(checkpoint_obj) - 1));
        instance_create(blockID.x - 6, blockID.y - 33, bird_obj);
    }
    if (instance_exists(ladder_obj))
    {
        blockID = instance_find(ladder_obj, irandom(instance_number(ladder_obj) - 1));
        instance_create(blockID.x + random_range(-16,16), blockID.y + random_range(-16,16), bird_obj);
    }
    if (instance_exists(grassBlock_obj))
    {
        blockID = instance_find(grassBlock_obj, irandom(instance_number(grassBlock_obj) - 1));
        instance_create(blockID.x + random_range(-16,16), blockID.y - 19, bird_obj);
    }
    if (instance_exists(leafBlock_obj))
    {
        blockID = instance_find(leafBlock_obj, irandom(instance_number(leafBlock_obj) - 1));
        instance_create(blockID.x + random_range(-16,16), blockID.y - 19, bird_obj);
    }
    birdNumber = birdNumber - 1;
}

