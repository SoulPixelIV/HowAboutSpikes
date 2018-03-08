key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(0, gp_padu);
key_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(0, gp_padd);
key_enter = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face1);
key_back = keyboard_check_pressed(vk_escape) || keyboard_check_pressed(vk_backspace) || gamepad_button_check_pressed(0, gp_face2);

if (key_up)
{
    if (buttonSelected > -1)
    {
        buttonSelected = buttonSelected - 1;
    }
    if (buttonSelected == -1)
    {
        buttonSelected = 3;
    }
}
if (key_down)
{
    if (buttonSelected < 4)
    {
        buttonSelected = buttonSelected + 1;
    }
    if (buttonSelected == 4)
    {
        buttonSelected = 0;
    }
}

if (buttonSelected == 0)
{
    cursor_obj.x = 176;
    cursor_obj.y = 183;
    if (key_enter)
    {
        room_goto(tutorial);
    }
}
if (buttonSelected == 1)
{
    cursor_obj.x = 176;
    cursor_obj.y = 215;
    //global.continued = true;
    if (key_enter)
    {
        if (file_exists("save1.has"))
        {
            ini_open("save1.has");
            global.loadedRoom = ini_read_real("Save1", "current room", 1);
            global.mode = ini_read_real("Save1", "gamemode", 0);
            global.deathCount = ini_read_real("Save1", "death count", 0);
            global.healthVar = ini_read_real("Save1", "health", 2);
            global.money = ini_read_real("Save1", "money", 0);
            room_goto(global.loadedRoom);
            ini_close();
        }
    }
}
if (buttonSelected == 2)
{
    cursor_obj.x = 176;
    cursor_obj.y = 247;
    if (key_enter)
    {
        room_goto(settingsMenu);
    }
}
if (buttonSelected == 3)
{
    cursor_obj.x = 176;
    cursor_obj.y = 279;
    if (key_enter)
    {
        game_end();
    }
}

/* */
/*  */
