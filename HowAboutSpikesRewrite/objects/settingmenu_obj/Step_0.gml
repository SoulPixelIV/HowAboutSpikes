key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(0, gp_padu);
key_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(0, gp_padd);
key_enter = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face1);
key_back = keyboard_check_pressed(vk_escape) || keyboard_check_pressed(vk_backspace) || gamepad_button_check_pressed(0, gp_face2);

if (key_back)
{
    room_goto(mainMenu);
}

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
    cursor_obj.x = 236;
    cursor_obj.y = 183;
    if (key_enter)
    {
        room_goto(videosettingsMenu);
    }
}
if (buttonSelected == 1)
{
    cursor_obj.x = 236;
    cursor_obj.y = 215;
    if (key_enter)
    {
        //room_goto(audiosettingsMenu);
    }
}
if (buttonSelected == 2)
{
    cursor_obj.x = 236;
    cursor_obj.y = 247;
    if (key_enter)
    {
        room_goto(controlsMenu);
    }
}
if (buttonSelected == 3)
{
    cursor_obj.x = 236;
    cursor_obj.y = 279;
    if (key_enter)
    {
        room_goto(mainMenu);
    }
}

