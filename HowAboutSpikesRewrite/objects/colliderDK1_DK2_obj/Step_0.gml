playerInst = player_obj;

if (place_meeting(x, y, player_obj))
{
    if (room == demonsKeep1)
    {
        with (playerInst)
        {
            instance_destroy();
        }
        room_goto(demonsKeep2);
        global.transition = false;
        global.playerSpawnLocation = 0;
    }
    else
    {
        with (playerInst)
        {
            instance_destroy();
        }
        room_goto(demonsKeep1);
        global.transition = false;
        global.playerSpawnLocation = 1;
    }
}

