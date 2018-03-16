draw_self();
global.guiPosX = __view_get( e__VW.XView, 0 );
global.guiPosY = __view_get( e__VW.YView, 0 );
draw_set_font(gui_fnt);

//###Health###
if (health == 6)
{
    draw_sprite(heart_spr, 0, global.guiPosX + 36, global.guiPosY + 36);
    draw_sprite(heart_spr, 0, global.guiPosX + 116, global.guiPosY + 36);
    draw_sprite(heart_spr, 0, global.guiPosX + 196, global.guiPosY + 36);
}
if (health == 5)
{
    draw_sprite(heart_spr, 0, global.guiPosX + 36, global.guiPosY + 36);
    draw_sprite(heart_spr, 0, global.guiPosX + 116, global.guiPosY + 36);
    draw_sprite(heart_spr, 1, global.guiPosX + 196, global.guiPosY + 36);
}
if (health == 4)
{
    draw_sprite(heart_spr, 0, global.guiPosX + 36, global.guiPosY + 36);
    draw_sprite(heart_spr, 0, global.guiPosX + 116, global.guiPosY + 36);
}
if (health == 3)
{
    draw_sprite(heart_spr, 0, global.guiPosX + 36, global.guiPosY + 36);
    draw_sprite(heart_spr, 1, global.guiPosX + 116, global.guiPosY + 36);
}
if (health == 2)
{
    draw_sprite(heart_spr, 0, global.guiPosX + 36, global.guiPosY + 36);
}
if (health == 1)
{
    draw_sprite(heart_spr, 1, global.guiPosX + 36, global.guiPosY + 36);
}
if (health == 0)
{
    draw_sprite(heart_spr, 2, global.guiPosX + 36, global.guiPosY + 36);
}

//###Money###
draw_sprite(darkSpiritIcon_spr, 0, global.guiPosX + 586, global.guiPosY + 324);

draw_text(global.guiPosX + 616, global.guiPosY + 324, string_hash_to_newline(string(global.money)));

//###GUI###
draw_set_colour(c_white);
draw_text(global.guiPosX + 8, global.guiPosY + 272, "Gamemode = " + string(global.mode));
draw_text(global.guiPosX + 8, global.guiPosY + 288, "VSpeed = " + string(verSpeed));
draw_text(global.guiPosX + 8, global.guiPosY + 304, "FPS = " + string(fps_real));
draw_text(global.guiPosX + 8, global.guiPosY + 320, "State = " + string(global.state));
draw_text(global.guiPosX + 8, global.guiPosY + 336, "playerSpawnLocation = " + string(global.playerSpawnLocation));
//draw_text(guiPosX + 8, guiPosY + 80, "'R' to Restart Room!");

draw_set_colour(c_white);
//###Combat###
/*
if (nearEnemy == true)
{
    draw_text(player_obj.x - 19, player_obj.y - 30, "'Q'/RB");
}
*/

//###World Text###
if (room == gardenValley && global.spawned == true)
{
    draw_set_font(message_fnt);
    draw_set_colour(c_white);
    draw_text(global.guiPosX + 90, global.guiPosY + 70, string_hash_to_newline("Now Entering: Garden Valley"));
    textTimer = textTimer - 0.5;
    if (textTimer <= 0)
    {
        global.spawned = false;
        textTimer = 100;
    }
}
else
{
    draw_set_alpha(1);
}
if (room == unknownForest1 && global.spawned == true)
{
    draw_set_font(message_fnt);
    draw_set_colour(c_white);
    draw_text(global.guiPosX + 90, global.guiPosY + 70, string_hash_to_newline("Now Entering: Unknown Forest"));
    textTimer = textTimer - 0.5;
    if (textTimer <= 0)
    {
        global.spawned = false;
        textTimer = 100;
    }
}
else
{
    draw_set_alpha(1);
}
if (room == unknownForest3 && global.spawned == true)
{
    draw_set_font(message_fnt);
    draw_set_colour(c_white);
    draw_text(global.guiPosX + 90, global.guiPosY + 70, string_hash_to_newline("Now Entering: Fading Mansion"));
    textTimer = textTimer - 0.5;
    if (textTimer <= 0)
    {
        global.spawned = false;
        textTimer = 100;
    }
}
else
{
    draw_set_alpha(1);
}
if (room == undergroundCity1 && global.spawned == true)
{
    draw_set_font(message_fnt);
    draw_set_colour(c_white);
    draw_text(global.guiPosX + 90, global.guiPosY + 70, string_hash_to_newline("Now Entering: Underground City"));
    textTimer = textTimer - 0.5;
    if (textTimer <= 0)
    {
        global.spawned = false;
        textTimer = 100;
    }
}
else
{
    draw_set_alpha(1);
}
if (room == demonsKeep1 && global.spawned == true)
{
    draw_set_font(message_fnt);
    draw_set_colour(c_white);
    draw_text(global.guiPosX + 90, global.guiPosY + 70, string_hash_to_newline("Now Entering: Demons Keep"));
    textTimer = textTimer - 0.5;
    if (textTimer <= 0)
    {
        global.spawned = false;
        textTimer = 100;
    }
}
else
{
    draw_set_alpha(1);
}
if (room == demonsKeep2 && global.spawned == true)
{
    draw_set_font(message_fnt);
    draw_set_colour(c_white);
    draw_text(global.guiPosX + 90, global.guiPosY + 70, string_hash_to_newline("Now Entering: Castle of Regret"));
    textTimer = textTimer - 0.5;
    if (textTimer <= 0)
    {
        global.spawned = false;
        textTimer = 100;
    }
}
else
{
    draw_set_alpha(1);
}
if (room == demonsKeep3 && global.spawned == true)
{
    draw_set_font(message_fnt);
    draw_set_colour(c_white);
    draw_text(global.guiPosX + 90, global.guiPosY + 70, string_hash_to_newline("Now Entering: Demons Keep"));
    textTimer = textTimer - 0.5;
    if (textTimer <= 0)
    {
        global.spawned = false;
        textTimer = 100;
    }
}
else
{
    draw_set_alpha(1);
}
if (room == sentinelGraves1 && global.spawned == true)
{
    draw_set_font(message_fnt);
    draw_set_colour(c_white);
    draw_text(global.guiPosX + 90, global.guiPosY + 70, string_hash_to_newline("Now Entering: Sentinel Graves"));
    textTimer = textTimer - 0.5;
    if (textTimer <= 0)
    {
        global.spawned = false;
        textTimer = 100;
    }
}
else
{
    draw_set_alpha(1);
}
if (room == deepPrison && global.spawned == true)
{
    draw_set_font(message_fnt);
    draw_set_colour(c_white);
    draw_text(global.guiPosX + 90, global.guiPosY + 70, string_hash_to_newline("Now Entering: Deep Prison"));
    textTimer = textTimer - 0.5;
    if (textTimer <= 0)
    {
        global.spawned = false;
        textTimer = 100;
    }
}
else
{
    draw_set_alpha(1);
}

/* */
///Black Screen

if (dead == true)
{
    if (amount < 1)
    {
        amount = amount + 0.01;
    }
}
else
{
    if (amount > 0)
    {
        amount -= 0.01;
    }
}

if !surface_exists(surface)
{
    surface = surface_create(room_width, room_height);
    surfaceScale = 1/8;
}
else
{
    surface_set_target(surface);
    draw_clear(c_black);
    surface_reset_target();
    draw_surface_ext(surface, 0, 0, 1/surfaceScale, 1/surfaceScale, 0, c_white, amount);
}



/* */
///Pause Menu

if (pauseMenu == true)
{
    movement = false;
    amount = 0.6;
}
else
{
    movement = true;
}

/* */
/*  */
