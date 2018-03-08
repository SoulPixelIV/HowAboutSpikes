playerInst = player_obj;

if (place_meeting(x, y, player_obj))
{
    if (room == gardenValley)
    {
        with (playerInst)
        {
            instance_destroy();
        }
        room_goto(undergroundCity1);
        global.transition = false;
        global.playerSpawnLocation = 0;
    }
    else
    {
        with (playerInst)
        {
            instance_destroy();
        }
        room_goto(gardenValley);
        global.transition = false;
        global.playerSpawnLocation = 2;
    }
}

