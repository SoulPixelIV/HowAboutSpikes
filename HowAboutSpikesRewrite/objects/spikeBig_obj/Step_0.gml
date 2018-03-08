spawnTime = spawnTime - 1;

if (spawnTime <= 0)
{
    if (random(10) >= 9)
    {
        instance_create(x, y + 16, spikeBigFalling_obj);
    }
    spawnTime = 200;
}

