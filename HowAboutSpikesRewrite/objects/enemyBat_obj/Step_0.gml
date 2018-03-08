move_towards_point(player_obj.x, player_obj.y, 2.1);

if (place_meeting(x, y, hitbox_obj))
{
    enemyHealth = enemyHealth - global.damage * 3;
}
if (place_meeting(x, y, scythe_obj))
{
    enemyHealth = enemyHealth - global.damage * 3;
}

//###Death###
if (enemyHealth <= 0)
{
    instance_destroy();
}
if (place_meeting(x, y, player_obj))
{
    global.hit = true;
    instance_destroy();
}

with (player_obj) {
if ((place_meeting(x, y, checkpoint_obj)) || (place_meeting(x, y, checkpointMystery_obj)))
{
    with(enemyBat_obj)
    {
        instance_destroy();
    }
}


}
