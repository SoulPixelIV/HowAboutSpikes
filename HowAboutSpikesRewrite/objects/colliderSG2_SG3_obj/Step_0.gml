playerInst = player_obj;

if (place_meeting(x, y, player_obj))
{
    if (room == sentinelGraves2)
    {
        with (playerInst)
        {
            instance_destroy();
        }
        room_goto(sentinelGraves3);
        global.transition = false;
        global.playerSpawnLocation = 0;
    }
    else
    {
        with (playerInst)
        {
            instance_destroy();
        }
        room_goto(sentinelGraves2);
        global.transition = false;
        global.playerSpawnLocation = 2;
    }
}

