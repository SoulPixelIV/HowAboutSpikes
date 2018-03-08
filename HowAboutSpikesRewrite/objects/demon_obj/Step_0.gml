image_speed = 0.05;
image_angle = point_direction(x, y, player_obj.x, player_obj.y) + 180;

if (move == true)
{
    move_towards_point(player_obj.x, player_obj.y, movSpeed);
    moveTimer = moveTimer - 1;
}
else
{
    speed = 0;
    stopTimer = stopTimer - 1;
}

if (moveTimer <= 0)
{
    move = false;
    moveTimer = 30;
}
if (stopTimer <= 0)
{
    move = true;
    stopTimer = 20;
}

if (place_meeting(x, y, player_obj))
{
    global.hit = true;
    instance_destroy();
}
if (!place_free(x, y))
{
    instance_destroy();
}

with (player_obj) {
if (place_meeting(x, y, checkpoint_obj) || place_meeting(x, y, checkpointMystery_obj))
{
    with (demon_obj)
    {
        instance_destroy();
    }
}

}
