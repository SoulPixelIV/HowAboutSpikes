key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(0, gp_padu);
key_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(0, gp_padd);
key_enter = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face1);
key_back = keyboard_check_pressed(vk_escape) || keyboard_check_pressed(vk_backspace) || gamepad_button_check_pressed(0, gp_face2);

if (key_back && userInput == false)
{
    room_goto(settingsMenu);
}

if (key_up && userInput == false)
{
    if (buttonSelected > -1)
    {
        buttonSelected = buttonSelected - 1;
    }
    if (buttonSelected == -1)
    {
        buttonSelected = 5;
    }
}
if (key_down && userInput == false)
{
    if (buttonSelected < 6)
    {
        buttonSelected = buttonSelected + 1;
    }
    if (buttonSelected == 6)
    {
        buttonSelected = 0;
    }
}
//MOVE LEFT
if (buttonSelected == 0)
{
    cursor_obj.x = 216;
    cursor_obj.y = 183;
    if (key_enter)
    {
        userInput = true;
    }
    if (userInput == true)
    {
        if (!key_enter)
        {
            if (keyboard_check_pressed(vk_anykey))
            {
                keyboard_set_map(keyboard_lastkey, ord("A"));
                leftKey = keyboard_lastkey;
                userInput = false;
            }
        }
    }
}
//MOVE RIGHT
if (buttonSelected == 1)
{
    cursor_obj.x = 216;
    cursor_obj.y = 215;
    if (key_enter)
    {
        userInput = true;
    }
    if (userInput == true)
    {
        if (!key_enter)
        {
            if (keyboard_check_pressed(vk_anykey))
            {
                keyboard_set_map(keyboard_lastkey, ord("D"));
                rightKey = keyboard_lastkey;
                userInput = false;
            }
        }
    }
}
//JUMP
if (buttonSelected == 2)
{
    cursor_obj.x = 216;
    cursor_obj.y = 247;
    if (key_enter)
    {
        userInput = true;
    }
    if (userInput == true)
    {
        if (!key_enter)
        {
            if (keyboard_check_pressed(vk_anykey))
            {
                keyboard_set_map(keyboard_lastkey, vk_space);
                jumpKey = keyboard_lastkey;
                userInput = false;
            }
        }
    }
}
//ATTACK
if (buttonSelected == 3)
{
    cursor_obj.x = 216;
    cursor_obj.y = 279;
    if (key_enter)
    {
        userInput = true;
    }
    if (userInput == true)
    {
        if (!key_enter)
        {
            if (keyboard_check_pressed(vk_anykey))
            {
                keyboard_set_map(keyboard_lastkey, ord("K"));
                attackKey = keyboard_lastkey;
                userInput = false;
            }
        }
    }
}
//THROW
if (buttonSelected == 4)
{
    cursor_obj.x = 216;
    cursor_obj.y = 311;
    if (key_enter)
    {
        userInput = true;
    }
    if (userInput == true)
    {
        if (!key_enter)
        {
            if (keyboard_check_pressed(vk_anykey))
            {
                keyboard_set_map(keyboard_lastkey, ord("J"));
                throwKey = keyboard_lastkey;
                userInput = false;
            }
        }
    }
}
//BACK
if (buttonSelected == 5)
{
    cursor_obj.x = 216;
    cursor_obj.y = 343;
    if (key_enter)
    {
        room_goto(settingsMenu);
    }
}


