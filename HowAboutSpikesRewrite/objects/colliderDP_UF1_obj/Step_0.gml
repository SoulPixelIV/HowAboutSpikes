playerInst = player_obj;

if (place_meeting(x, y, player_obj))
{
    if (room == deepPrison)
    {
        with (playerInst)
        {
            instance_destroy();
        }
        room_goto(unknownForest1);
        global.transition = false;
        global.playerSpawnLocation = 3;
    }
    else
    {
        with (playerInst)
        {
            instance_destroy();
        }
        room_goto(deepPrison);
        global.transition = false;
        global.playerSpawnLocation = 1;
    }
}

