playerInst = player_obj;

if (place_meeting(x, y, player_obj))
{
    if (room == unknownForest1)
    {
        with (playerInst)
        {
            instance_destroy();
        }
        room_goto(unknownForest2);
        global.transition = false;
        global.playerSpawnLocation = 1;
    }
    else
    {
        with (playerInst)
        {
            instance_destroy();
        }
        room_goto(unknownForest1);
        global.transition = false;
        global.playerSpawnLocation = 2;
    }
}
