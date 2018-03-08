playerInst = player_obj;

if (place_meeting(x, y, player_obj))
{
    if (room == undergroundCity3)
    {
        with (playerInst)
        {
            instance_destroy();
        }
        room_goto(undergroundCity2);
        global.transition = false;
        global.playerSpawnLocation = 2;
    }
    else
    {
        with (playerInst)
        {
            instance_destroy();
        }
        room_goto(undergroundCity3);
        global.transition = false;
        global.playerSpawnLocation = 2;
    }
}

