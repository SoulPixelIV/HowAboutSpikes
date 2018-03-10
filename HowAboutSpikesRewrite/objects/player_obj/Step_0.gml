/// @description Movement etc.

//###Movement###
if (movement == true)
{
    x = x + horSpeed;
    y = y + verSpeed;
}

key_left = keyboard_check(ord("A")) || gamepad_axis_value(0, gp_axislh) < 0;
key_right = keyboard_check(ord("D")) || gamepad_axis_value(0, gp_axislh) > 0;
key_jump = keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face1);
key_jump_release = keyboard_check_released(vk_space) || gamepad_button_check_released(0, gp_face1);
key_attack = keyboard_check_pressed(ord("K")) || gamepad_button_check_pressed(0, gp_shoulderr);
key_throw = keyboard_check(ord("J")) || gamepad_button_check(0, gp_shoulderl);
key_restart = keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face1);
key_pause = keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(0, gp_start);
gamepad_set_axis_deadzone(0, 0.55);
var move = key_right - key_left;
horSpeed = move * global.movSpeed;

if (keyboard_check_pressed(ord("J"))  && verSpeed > 0 && dash == false || gamepad_button_check_pressed(0, gp_shoulderl) && verSpeed > 0 && dash == false)
{
    dash = true;
}
if (dash == true)
{
    global.movSpeed = 5.95;
    if (!instance_exists(dashEffect_obj))
    {
        instance_create(x, y, dashEffect_obj);
    }
    dashTimer = dashTimer - 1;
}
if (dashTimer <= 0 || grounded == true || onLadder == true)
{
    dash = false;
    global.movSpeed = 2.65;
    dashTimer = 7;
}

//###Scythe Throw###
if (key_throw)
{
    if (lastDir == 0)
    {
        if (!throw)
        {
            instance_create(x + 16, y, scythe_obj);
            throw = true;
            with (scythe_obj)
            {
                hspeed = 6.2;
            }
        }
    }
    else
    {
        if (!throw)
        {
            instance_create(x - 16, y, scythe_obj);
            throw = true;
            with (scythe_obj)
            {
                hspeed = -6.2;
            }
        }
    }
}
else
{
    if (instance_exists(scythe_obj))
    {
        with (scythe_obj)
        {
            instance_destroy();
        }
    }
    if (grounded == true)
    {
        throw = false;
    }
}


//###Animation###
if (movement == true)
{
    if (key_right && animPause == false)
    {
        lastDir = 0;
        image_speed = 0.15;
        sprite_index = playerWalk_spr;
        image_xscale = 1;
    }
    if (key_left && animPause == false)
    {
        lastDir = 1;
        image_speed = 0.15;
        sprite_index = playerWalk_spr;
        image_xscale = -1;
    }
    
    if (horSpeed == 0 && animPause == false)
    {
        if (lastDir == 0)
        {
            image_speed = 0.145;
            sprite_index = playerIdle_spr;
            image_xscale = 1;
        }
        else
        {
            image_speed = 0.145;
            sprite_index = playerIdle_spr;
            image_xscale = -1;
        }
    }
    
    if (verSpeed > 0 && animPause == false)
    {
        image_speed = 0.2;
        sprite_index = playerFalling_spr;
        if (lastDir == 0)
        {
            image_xscale = 1;
        }
        else
        {
            image_xscale = -1;
        }
    }
    
    if (landing == true && animPause == false)
    {
        image_speed = 0.1;
        sprite_index = playerLanding_spr;
        if (lastDir == 0)
        {
            image_xscale = 1;
        }
        else
        {
            image_xscale = -1;
        }
    }
    
    if (noDamage == true)
    {
        sprite_index = playerInvincible_spr;
        if (invTimer >= 30)
        {
            image_speed = 0.5;
        }
        else
        {
            image_speed = 0.2;
        }
        if (lastDir == 0)
        {
            image_xscale = 1;
        }
        else
        {
            image_xscale = -1;
        }
    }
}
    
//###Gravity###
if (movement == true)
{
    if (verSpeed < 14)
    {
        if (onLadder == false)
        {
            verSpeed = verSpeed + global.gravityStrength;
        }
        else
        {
            if (place_meeting(x, y, ladder_obj))
            {
                verSpeed = 2.75;
            }
            else
            {
                verSpeed = 0;
            }
        }
    }

    if (!place_free(x, y + 1) && (key_jump)) || (key_jump) && (global.numberJumps > 0)
    {
        if (!audio_is_playing(jump_snd))
        {
            audio_play_sound(jump_snd, 1, false);
        }
        verSpeed = -global.jumpStrength;
        global.numberJumps = global.numberJumps - 1;
    }
    
    if (key_jump_release && fullJump == false)
    {
        if (verSpeed < 0)
        {
            verSpeed = verSpeed / 2;
        }
    }
}
    
//###Combat###
if (key_attack && movement == true)
{
    animPause = true;
    alarm[2] = attackCooldown;
    image_speed = 0.4;
    sprite_index = playerAttack_spr;
    if (cooldown == false)
    {
        if (lastDir == 0)
        {
            instance_create(x + 16, y, hitbox_obj);
            cooldown = true
            image_xscale = 1;
        }
        else
        {
            instance_create(x - 16, y, hitbox_obj);
            cooldown = true
            image_xscale = -1;
        }
    }
}

if ((grounded == false) && (distance_to_object(enemy_obj) < 128))
{
    nearEnemy = true;
    if (key_attack)
    {
        //global.state = 1;
    }
}
else
{
    nearEnemy = false;
}

switch (global.state)
{
case 1:
    targetInst = instance_nearest(x, y, enemy_obj);
    targetX = targetInst.x;
    targetY = targetInst.y;
    global.state = 2;
    break;
    
case 2:
    if (distance_to_point(targetX, targetY) < 32)
    {
        global.state = 3;
    }
    else
    {
        move_towards_point(targetX, targetY, 7.4);
        if (!place_free(x + 64, y + 64) || !place_free(x -64, y-64))
        {
            global.state = 3;
        }
        instance_create(x, y, hitbox_obj);
    }
    break;

case 3:
    speed = 0;
    verSpeed = 0;
    horSpeed = 0;
    global.state = 4;
    break;
    
case 4:
    if (global.numberJumps < 1)
    {
        global.numberJumps = global.numberJumps + 1;
    }
    verSpeed = -4;
    global.state = 0;
    break;
}

//###Collision Checking###
grounded = false;

if (landing == true)
{
    if (landSound == true)
    {
        if (!audio_is_playing(land_snd))
        {
            audio_play_sound(land_snd, 1, false);
            landSound = false;
        }
    }
}
if (!place_free(x + horSpeed, y))
{
    while (place_free(x + sign(horSpeed), y))
    {
        x = x + sign(horSpeed);
    }
    horSpeed = 0;
    fullJump = false;
    //grounded = true;
} 
if (!place_free(x, y + verSpeed))
{
    while (place_free(x, y + sign(verSpeed)))
    {
        y = y + sign(verSpeed);
    }
    grounded = true;
    fullJump = false;
    if (verSpeed >= 13)
    {
        gamepad_set_vibration(0, 0.4, 0.4);
        alarm[0] = 10;
    }
    if (verSpeed >= 2)
    {
        landSound = true;
        landing = true;
        alarm[1] = 8;
    }
    verSpeed = 0;
    if (!place_free(x, y + 1))
    {
        global.numberJumps = global.numberJumpsSave;
    }
}

//###Death###
if (health == 0)
{
    deathCountVar = true;
}
if (health < 0)
{
    horSpeed = 0;
    verSpeed = 0;
    dead = true;
    if (key_restart)
    {
        if (!instance_exists(playerDeath_obj))
        {
            instance_create(x, y, playerDeath_obj);
        }
        if (global.checkpointX == 0)
            {
                x = spawn_obj.x;
                y = spawn_obj.y - 8;
            }
            else
            {
                x = global.checkpointX;
                y = global.checkpointY;
                verSpeed = 0;
                horSpeed = 0;
            }
            health = 2;
            dead = false;
    }
}

if (deathCountVar == true)
{
    global.deathCount = global.deathCount + 1;
    deathCountVar = false;
    health = health - 1;
}

//###Pause Menu###
if (key_pause)
{
    if (pauseMenu == false)
    {
        pauseMenu = true;
    }
    else
    {
        pauseMenu = false;
    }
}

///Collision

//###Scythe Collision###
if (place_meeting(x, y, scythe_obj) && global.throwing == false)
{
    if (!audio_is_playing(jump_snd))
    {
        audio_play_sound(jump_snd, 1, false);
    }
    
    //###Collision Checking###
    if (!place_free(x + horSpeed, y))
    {
        while (place_free(x + sign(horSpeed), y))
        {
            x = x + sign(horSpeed);
        }
        horSpeed = 0;
    }
    else
    {
        verSpeed = -9;
    }
    if (!place_free(x, y + verSpeed))
    {
        while (place_free(x, y + sign(verSpeed)))
        {
            y = y + sign(verSpeed);
        }
        verSpeed = 0;
    }
    else
    {
        verSpeed = -9;
    }
    fullJump = true;
    global.numberJumps = global.numberJumps - 1;
    with (scythe_obj)
    {
        instance_destroy();
    }
}


//###Checkpoint Collision###
if (place_meeting(x, y, checkpoint_obj) || (place_meeting(x, y, checkpointMystery_obj)))
{
    health = global.healthVar;
    global.checkpointX = other.x;
    global.checkpointY = other.y;
    global.checkpointRoom = room;
    instance_activate_object(glassBlockBroken_obj);
    instance_activate_object(enemyNormal_obj);
    instance_activate_object(enemyNormal2_obj);
    instance_activate_object(enemyMystery_obj);
    instance_activate_object(enemyFlyingCloud_obj);
    instance_activate_object(scytheReload_obj);
    other.image_index = 1;
    noDamage = false;
    if (global.restart == false)
    {
        global.restart = true;
    }
}
//###Damage Collision###
if (place_meeting(x, y, lava_obj))
{
    health = health - 99;
    alarm[0] = 10;
}
    
if (global.hit == true)
{
    gamepad_set_vibration(0, 0.3, 0.3);
    if (verSpeed > 0)
    {
        verSpeed = -7;
    }
    if (verSpeed < 0)
    {
        verSpeed = 7;
    }

    //###Collision Checking###
    if (!place_free(x + horSpeed, y))
    {
        while (place_free(x + sign(horSpeed), y))
        {
            x = x + sign(horSpeed);
        }
        horSpeed = 0;
    }
    else
    {
        verSpeed = -global.ladderSpeed;
    }
    if (!place_free(x, y + verSpeed))
    {
        while (place_free(x, y + sign(verSpeed)))
        {
            y = y + sign(verSpeed);
        }
        verSpeed = 0;
    }
    else
    {
        verSpeed = -global.ladderSpeed;
        global.numberJumps = global.numberJumpsSave;
    }

    //horSpeed = 5 * sign(horSpeed);
    if (noDamage == false)
    {
        health = health - 1;
    }
    alarm[0] = 10;
    noDamage = true;
    global.hit = false;
}

if (noDamage == true)
{
    invTimer = invTimer - 1;
}

if (invTimer <= 0)
{
    noDamage = false;
    gamepad_set_vibration(0, 0, 0);
    invTimer = 90;
}
//###Ladder Collision###
key_jump = keyboard_check(vk_space) || gamepad_button_check(0, gp_face1);
if (place_meeting(x, y, ladder_obj))
{
    if (key_jump)
    {
        //###Collision Checking###
        if (!place_free(x + horSpeed, y))
        {
            while (place_free(x + sign(horSpeed), y))
            {
                x = x + sign(horSpeed);
            }
            horSpeed = 0;
        }
        else
        {
            verSpeed = -global.ladderSpeed;
        }
        if (!place_free(x, y + verSpeed))
        {
            while (place_free(x, y + sign(verSpeed)))
            {
                y = y + sign(verSpeed);
            }
            verSpeed = 0;
        }
        else
        {
            verSpeed = -global.ladderSpeed;
            global.numberJumps = global.numberJumpsSave;
        }
    }
    else
    {
        onLadder = true;
    }
}
else
{
    onLadder = false;
}   
//###Lever Collision###
if (place_meeting(x, y, lever_obj))
{
    global.hitLever = true;
}
if (place_meeting(x, y, leverBlue_obj))
{
    global.hitLeverBlue = true;
}
if (place_meeting(x, y, leverRed_obj))
{
    global.hitLeverRed = true;
}
//###Key Collision###
if (place_meeting(x, y, key_obj))
{
    global.holding = other.id;
}
//###Water Collision###
if (place_meeting(x, y, water_obj))
{
    horSpeed = horSpeed / 1.75;
    verSpeed = verSpeed / 1.02;
}
//###Quicksand Collision###
if (place_meeting(x, y, quicksandBlock_obj))
{
    horSpeed = horSpeed / 1.75;
    verSpeed = verSpeed / 1.15;
}
//###FlyingCloud Collision###
if (place_meeting(x, y, flyingCloud_obj))
{
    horSpeed = horSpeed / 2.75;
    verSpeed = verSpeed / 1.2;
}
//###Money Collision###
if (place_meeting(x, y, darkSpirit_obj))
{
    global.money = global.money + 1;
}
if (place_meeting(x, y, darkSpiritBig_obj))
{
    global.money = global.money + 10;
}
//###GlassBlockBroken Collision###
if (place_meeting(x, y, glassBlockBroken_obj))
{
    horSpeed = 5 * sign(horSpeed);
}



///Debug
//###Easy Mode###
if (keyboard_check_pressed(ord("0")))
{
    if (global.mode == 0)
    {
        global.mode = 1;
    }
    else
    {
        global.mode = 0;
    }
}

//###Debug Stuff###
if (keyboard_check_pressed(ord("1")) && room != undergroundCity3)
{
    global.playerSpawnLocation = 0;
    room_goto(undergroundCity3);
}

if (keyboard_check_pressed(ord("2")) && room != gardenValley)
{
    global.playerSpawnLocation = 0;
    room_goto(gardenValley);
}
if (keyboard_check_pressed(ord("3")) && room != unknownForest2)
{
    global.playerSpawnLocation = 0;
    room_goto(unknownForest2);
}
if (keyboard_check_pressed(ord("4")) && room != unknownForest3)
{
    global.playerSpawnLocation = 0;
    room_goto(unknownForest3);
}
if (keyboard_check_pressed(ord("5")) && room != unknownForestBoss)
{
    global.playerSpawnLocation = 0;
    room_goto(unknownForestBoss);
}
if (keyboard_check_pressed(ord("6")) && room != undergroundCity1)
{
    global.playerSpawnLocation = 0;
    room_goto(undergroundCity1);
}
if (keyboard_check_pressed(ord("7")) && room != undergroundCity2)
{
    global.playerSpawnLocation = 0;
    room_goto(undergroundCity2);
}
if (keyboard_check_pressed(ord("8")) && room != undergroundCity3)
{
    global.playerSpawnLocation = 0;
    room_goto(undergroundCity3);
}
if (keyboard_check_pressed(ord("9")) && room != demonsKeep1)
{
    global.playerSpawnLocation = 0;
    room_goto(demonsKeep1);
}

