draw_healthbar(global.guiPosX + 32, global.guiPosY + 668, global.guiPosX + 608, global.guiPosY + 344, bossHealth, c_black, c_green, c_green, 0, true, true);


if (global.batPhase == 1)
{
    with (batBossSprite_obj)
    {
        image_blend = make_colour_hsv(255, 255, 255);
    }
}
else
{
    if (shootTimer <= 50)
    {
        with (batBossSprite_obj)
        {
            image_blend = make_colour_hsv(60, 60, 60);
        }
    }    
    else
    {
        with (batBossSprite_obj)
        {
            image_blend = make_colour_hsv(0, 0, 0);
        }
    }
}

