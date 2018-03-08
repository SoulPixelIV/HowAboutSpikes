//###Game Over###
with (player_obj)
{
    if (dead == true)
    {
        with (camera_obj)
        {
            draw_set_font(gameover_fnt);
            draw_set_colour(c_red);
            draw_text(global.guiPosX + 148, global.guiPosY + 148, string_hash_to_newline("Death Counter: " + string(global.deathCount)));  
            draw_sprite(gameover_spr, 0, global.guiPosX + 582, global.guiPosY + 180);
        }
    }
}
//###Pause Menu###
with (player_obj)
{
    if (pauseMenu == true)
    {
        with (camera_obj)
        {
            draw_set_font(message_fnt);
            draw_set_colour(c_white);
            draw_text(global.guiPosX + 90, global.guiPosY + 70, string_hash_to_newline("PAUSED"));
        }
    }
}

