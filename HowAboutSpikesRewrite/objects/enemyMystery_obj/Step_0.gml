x = x + horSpeed;
y = y + verSpeed;

if (distance_to_object(player_obj) <= 80 && distance_to_object(player_obj) >= 32 && exploding == false)
{
    image_index = 1;
    horSpeed = movSpeed;
    alarm[1] = 1;
    exploding = true;
}
else
{
    horSpeed = -movSpeed;
    alarm[4] = 100;
}

if (distance_to_object(player_obj) > 80)
{
    horSpeed = 0;
}

if (place_meeting(x, y, hitbox_obj) && (invincible == false))
{
    enemyHealth = enemyHealth - global.damage;
    invincible = true;
    alarm[0] = 10;
}
if (place_meeting(x, y, scythe_obj) && (invincible == false))
{
    enemyHealth = enemyHealth - global.damage / 2;
    invincible = true;
    alarm[0] = 10;
}

//###Gravity###
verSpeed = verSpeed + gravityStrength;

//###Collision Checking###
if (!place_free(x + horSpeed, y))
{
    while (place_free(x + sign(horSpeed), y))
    {
        x = x + sign(horSpeed);
    }
    horSpeed = 0;
}
if (!place_free(x, y + verSpeed))
{
    while (place_free(x, y + sign(verSpeed)))
    {
        y = y + sign(verSpeed);
    }
    verSpeed = 0;
}

//###Death###
if (enemyHealth <= 0)
{
    instance_deactivate_object(self);
}

with (player_obj) {
if ((place_meeting(x, y, checkpoint_obj)) || (place_meeting(x, y, checkpointMystery_obj)))
{
    with(enemyMystery_obj)
    {
        enemyHealth = 50;
        x = startPosX;
        y = startPosY;
    }
}

}
