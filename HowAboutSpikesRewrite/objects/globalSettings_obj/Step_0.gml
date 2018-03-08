//###Spawn###
if (global.playerSpawnLocation == 0)
{
    if (!instance_exists(player_obj))
    {
        instance_create(spawn_obj.x, spawn_obj.y, player_obj);
        if (!instance_exists(petBird_obj))
        {
            if (global.pickedPet == true)
            {
                instance_create(spawn_obj.x, spawn_obj.y, petBird_obj);
            }
        }
    }
    global.playerSpawnLocation = -1;
}
if (global.playerSpawnLocation == 1)
{
    if (!instance_exists(player_obj))
    {
        instance_create(spawn1_obj.x, spawn1_obj.y, player_obj);
        if (!instance_exists(petBird_obj))
        {
            if (global.pickedPet == true)
            {
                instance_create(spawn1_obj.x, spawn1_obj.y, petBird_obj);
            }
        }
    }
    global.playerSpawnLocation = -1;
}
if (global.playerSpawnLocation == 2)
{
    if (!instance_exists(player_obj))
    {
        instance_create(spawn2_obj.x, spawn2_obj.y, player_obj);
        if (!instance_exists(petBird_obj))
        {
            if (global.pickedPet == true)
            {
                instance_create(spawn2_obj.x, spawn2_obj.y, petBird_obj);
            }
        }
    }
    global.playerSpawnLocation = -1;
}
if (global.playerSpawnLocation == 3)
{
    if (!instance_exists(player_obj))
    {
        instance_create(spawn3_obj.x, spawn3_obj.y, player_obj);
        if (!instance_exists(petBird_obj))
        {
            if (global.pickedPet == true)
            {
                instance_create(spawn3_obj.x, spawn3_obj.y, petBird_obj);
            }
        }
    }
    global.playerSpawnLocation = -1;
}
if (global.playerSpawnLocation == 4)
{
    if (!instance_exists(player_obj))
    {
        instance_create(spawn4_obj.x, spawn4_obj.y, player_obj);
        if (!instance_exists(petBird_obj))
        {
            if (global.pickedPet == true)
            {
                instance_create(spawn4_obj.x, spawn4_obj.y, petBird_obj);
            }
        }
    }
    global.playerSpawnLocation = -1;
}

//###Easy Mode###
if (global.mode == 0)
{
    instance_deactivate_object(easyModeBlock_obj);
}
else
{
    instance_activate_object(easyModeBlock_obj);
}

