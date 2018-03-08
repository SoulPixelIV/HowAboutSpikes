if (distance_to_object(player_obj) <= 48)
{
    if (drawShop == false)
    {
        if (keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(0, gp_padu))
        {
            drawShop = true;
        }
    }
    else
    {
        if (keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(0, gp_padu))
        {
            drawShop = false;
        }
    }
}
else
{
    drawShop = false;
}

///Shop Menu

key_left = keyboard_check_pressed(vk_left) || gamepad_button_check_pressed(0, gp_padl)
key_right = keyboard_check_pressed(vk_right) || gamepad_button_check_pressed(0, gp_padr)
key_enter = keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0, gp_face1);

if (instance_exists(cursor_obj))
{
    with (cursor_obj)
    {
        image_angle = 270;
    }
    if (cursorPos == 0)
    {
        cursor_obj.x = shopIcon1_obj.x;
        cursor_obj.y = shopIcon1_obj.y + 32;
    }
    else
    {
        cursor_obj.x = shopIcon2_obj.x;
        cursor_obj.y = shopIcon2_obj.y + 32;
    }
}

if (drawShop == true)
{
    instance_activate_object(shopIcon1_obj);
    instance_activate_object(shopIcon2_obj);
    if (!instance_exists(cursor_obj))
    {
        instance_create(shopIcon1_obj.x, shopIcon1_obj.y + 32, cursor_obj);
    }
    else
    {
        instance_activate_object(cursor_obj);
    }
}
else
{
    instance_deactivate_object(shopIcon1_obj);
    instance_deactivate_object(shopIcon2_obj);
    instance_deactivate_object(cursor_obj);
}

if (key_left || key_right)
{
    with (monitor_obj)
    {
        if (drawShop == true)
        {
            if (cursorPos == 0)
            {
                cursorPos = 1;
            }
            else
            {
                cursorPos = 0;
            }
        }
    }
}

if (cursorPos == 0 && key_enter && drawShop == true)
{
    if (global.money > 24 && bought1 == false)
    {
        global.money = global.money - 25;
        global.mode = 1;
        with (shopIcon1_obj)
        {
            image_index = 1;
        }
        bought1 = true;
    }
}
if (cursorPos == 1 && key_enter && bought2 == false && drawShop == true)
{
    if (global.money > 19)
    {
        global.money = global.money - 20;
        global.healthVar = global.healthVar + 1;
        if (global.healthVar == 6)
        {
            bought2 = true;
        }
    }
}


