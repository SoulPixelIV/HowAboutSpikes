playerInst = player_obj;

if (place_meeting(x, y, player_obj))
{
    if (room == undergroundCity3)
    {
        with (playerInst)
        {
            instance_destroy();
        }
        room_goto(demonsKeep1);
        global.transition = false;
        global.playerSpawnLocation = 0;
    }
    else
    {
        with (playerInst)
        {
            instance_destroy();
        }
        room_goto(undergroundCity3);
        global.transition = false;
        global.playerSpawnLocation = 1;
    }
}

