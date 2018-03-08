playerInst = player_obj;

if (place_meeting(x, y, player_obj))
{
    if (room == unknownForestBoss)
    {
        with (playerInst)
        {
            instance_destroy();
        }
        room_goto(demonsKeep3);
        global.transition = false;
        global.playerSpawnLocation = 1;
    }
    else
    {
        with (playerInst)
        {
            instance_destroy();
        }
        room_goto(unknownForestBoss);
        global.transition = false;
        global.playerSpawnLocation = 1;
    }
}

