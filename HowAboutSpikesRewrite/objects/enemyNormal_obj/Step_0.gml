x = x + horSpeed;
y = y + verSpeed;

if (distance_to_object(player_obj) <= 100 && distance_to_object(player_obj) >= 32)
{
    horSpeed = movSpeed;
}
else
{
    horSpeed = -movSpeed;
    alarm[4] = 100;
}

if (place_meeting(x, y, player_obj))
{
    global.hit = true;
}

if (distance_to_object(player_obj) >= 120)
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
    enemyHealth = 100;
}

with (player_obj) {
if ((place_meeting(x, y, checkpoint_obj)) || (place_meeting(x, y, checkpointMystery_obj)))
{
    with(enemyNormal_obj)
    {
        enemyHealth = 100;
        x = startPosX;
        y = startPosY;
    }
}


}
