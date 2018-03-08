key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(0, gp_padu);
key_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(0, gp_padd);
key_enter = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face1);
key_back = keyboard_check_pressed(vk_escape) || keyboard_check_pressed(vk_backspace) || gamepad_button_check_pressed(0, gp_face2);

if (key_back)
{
    room_goto(settingsMenu);
}

if (key_up)
{
    if (buttonSelected > -1)
    {
        buttonSelected = buttonSelected - 1;
    }
    if (buttonSelected == -1)
    {
        buttonSelected = 1;
    }
}
if (key_down)
{
    if (buttonSelected < 2)
    {
        buttonSelected = buttonSelected + 1;
    }
    if (buttonSelected == 2)
    {
        buttonSelected = 0;
    }
}

if (buttonSelected == 0)
{
    cursor_obj.x = 276;
    cursor_obj.y = 183;
    if (key_enter)
    {
        if window_get_fullscreen()
        {
            window_set_fullscreen(false);
        }
        else
        {
            window_set_fullscreen(true);
        }
    }
}
if (buttonSelected == 1)
{
    cursor_obj.x = 276;
    cursor_obj.y = 215;
    if (key_enter)
    {
        room_goto(settingsMenu);
    }
}


