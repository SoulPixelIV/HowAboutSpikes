movTimer = movTimer - 1;
shootTimer = shootTimer - 1;
if (bossHealth <= 30)
{
    global.batPhase = 1;
}
if (shootTimer < 0)
{
    shoot = true;
    if (global.batPhase == 0)
    {
        shootTimer = 200;
    }
    else
    {
        shootTimer = 120;
    }
}
if (shoot == true)
{
    instance_create(x, y, orbRed_obj);
    shoot = false;
}
if (movTimer <= 0)
{
    if (dir == 0)
    {
        dir = 1;
    }
    else
    {
        dir = 0;
    }
    if (global.batPhase == 0)
    {
        movTimer = 350;
    }
    else
    {
        movTimer = 200;
    }
}

if (dir == 0)
{
    if (global.batPhase == 0)
    {
        x += 0.5;
    }
    else
    {
        x += 2.2;
    }
}
else
{
    if (global.batPhase == 0)
    {
        x -= 0.5;
    }
    else
    {
        x -= 2.2;
    }
}

with (player_obj) {
if ((place_meeting(x, y, checkpoint_obj)) || (place_meeting(x, y, checkpointMystery_obj)))
{
    with(batBoss_obj)
    {
        bossHealth = 100;
        global.batPhase = 0;
        movTimer = 350;
        dir = 0;
        x = startPosX;
        y = startPosY;
    }
}

}
if (bossHealth <= 0)
{
    with (batBossSprite_obj)
    {
        instance_destroy();
    }
    with (lockedBlockBat_obj)
    {
        instance_destroy();
    }
    instance_destroy();
    with (enemyBatSpawner_obj)
    {
        instance_destroy();
    }
}

with (batBossSprite_obj) {
if (place_meeting(x, y, scythe_obj))
{
    with (batBoss_obj)
    {
        bossHealth = bossHealth - global.damage / 3;
        invincible = true;
        alarm[0] = 10;
    }
}

}
