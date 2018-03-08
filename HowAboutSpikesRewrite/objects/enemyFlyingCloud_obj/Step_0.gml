x = x + hspeed;
hspeed = 0;

image_speed = 0.05;

if (distance_to_object(player_obj) < 256)
{
    hspeed = movSpeed;
    if (distance_to_object(player_obj) < 56)
    {
        hspeed = -movSpeed;
    }
}

spawnTimer = spawnTimer - 1;
if (spawnTimer <= 0)
{
    instance_create(x, y + 10, flyingCloud_obj);
    spawnTimer = 400;
}

if (place_meeting(x, y, hitbox_obj))
{
    enemyHealth = enemyHealth - global.damage / 8;
}
if (place_meeting(x, y, scythe_obj))
{
    enemyHealth = enemyHealth - global.damage / 4;
}

//###Death###
if (enemyHealth <= 0)
{
    instance_deactivate_object(self);
    enemyHealth = 100;
}

with (player_obj) {
if ((place_meeting(x, y, checkpoint_obj)) || (place_meeting(x, y, checkpointMystery_obj)))
{
    with(enemyFlyingCloud_obj)
    {
        enemyHealth = 100;
        x = startPosX;
        y = startPosY;
    }
}

}
