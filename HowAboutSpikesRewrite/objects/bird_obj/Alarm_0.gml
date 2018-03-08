if (random(2) >= 1)
{
    dir = 1;
}
else
{
    dir = -1;
}
if (flying == false)
{
    image_xscale = dir;
    alarm[0] = dirTimer;
}

