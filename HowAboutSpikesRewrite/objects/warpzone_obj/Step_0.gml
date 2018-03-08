playerInst = player_obj;

if (place_meeting(x, y, player_obj))
{
    if (room == unknownForest1)
    {
        with (playerInst)
        {
            instance_destroy();
        }
        room_goto(undergroundCity1);
        global.transition = false;
        global.playerSpawnLocation = 3;
    }
}
if (place_meeting(x, y, player_obj))
{
    if (room == undergroundCity1)
    {
        with (playerInst)
        {
            instance_destroy();
        }
        room_goto(unknownForest1);
        global.transition = false;
        global.playerSpawnLocation = 0;
    }
}

if (place_meeting(x, y, player_obj))
{
    if (room == unknownForest3)
    {
        with (playerInst)
        {
            instance_destroy();
        }
        room_goto(demonsKeep1);
        global.transition = false;
        global.playerSpawnLocation = 4;
    }
}
if (place_meeting(x, y, player_obj))
{
    if (room == demonsKeep1)
    {
        with (playerInst)
        {
            instance_destroy();
        }
        room_goto(unknownForest3);
        global.transition = false;
        global.playerSpawnLocation = 2;
    }
}

if (place_meeting(x, y, player_obj))
{
    if (room == demonsKeep3)
    {
        with (playerInst)
        {
            instance_destroy();
        }
        room_goto(sentinelGraves1);
        global.transition = false;
        global.playerSpawnLocation = 2;
    }
}
if (place_meeting(x, y, player_obj))
{
    if (room == sentinelGraves1)
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

if (place_meeting(x, y, player_obj))
{
    if (room == demonsKeep2)
    {
        with (playerInst)
        {
            instance_destroy();
        }
        room_goto(undergroundCity3);
        global.transition = false;
        global.playerSpawnLocation = 4;
    }
}
if (place_meeting(x, y, player_obj))
{
    if (room == undergroundCity3)
    {
        with (playerInst)
        {
            instance_destroy();
        }
        room_goto(demonsKeep2);
        global.transition = false;
        global.playerSpawnLocation = 4;
    }
}

