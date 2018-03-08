playerInst = player_obj;

if (place_meeting(x, y, player_obj))
{
    if (room == demonsKeep3)
    {
        with (playerInst)
        {
            instance_destroy();
        }
        room_goto(demonsKeep2);
        global.transition = false;
        global.playerSpawnLocation = 2;
    }
    else
    {
        with (playerInst)
        {
            instance_destroy();
        }
        room_goto(demonsKeep3);
        global.transition = false;
        global.playerSpawnLocation = 2;
    }
}

