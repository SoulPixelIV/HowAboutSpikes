spawnTimer = spawnTimer - 1;
if (spawnTimer <= 0)
{
    instance_create(x, y, enemyBat_obj);
    spawnTimer = 800;
}

