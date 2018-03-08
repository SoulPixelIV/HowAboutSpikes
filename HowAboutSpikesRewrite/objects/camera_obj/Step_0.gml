/// @description Camera View Follow System

//Camera Transition
if (global.spawned == true)
{
    if (global.transition == false)
    {
        //view_wview[0] = 0;
        //view_hview[0] = 0;
        global.transition = true;
    }
    if (__view_get( e__VW.WView, 0 ) < cameraWidth)
    {
        __view_set( e__VW.WView, 0, __view_get( e__VW.WView, 0 ) + 8 );
    }
    if (__view_get( e__VW.HView, 0 ) < cameraHeight)
    {
        __view_set( e__VW.HView, 0, __view_get( e__VW.HView, 0 ) + 4.7 );
    }
}
else
{
    global.transition = false;
}

//Camera Follow
if (instance_exists(player_obj))
{
    //Set Camera X Borders
    if (player_obj.x >= 320 && player_obj.x <= room_width - 320)
    {
        __view_set( e__VW.XView, 0, player_obj.x - (cameraWidth/2) );
    }
    else
    {
        if (player_obj.x <= 320)
        {
            __view_set( e__VW.XView, 0, 0 );
        }
        if (player_obj.x >= room_width - 320)
        {
            __view_set( e__VW.XView, 0, room_width - 640 );
        }
    }
    
    //Set Camera Y Borders
    if (player_obj.y <= (room_height - 180) && player_obj.y >= 180)
    {
        __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (((player_obj.y - (cameraHeight/2) - __view_get( e__VW.YView, 0 ))) * cameraSpeed) );
    }
    else
    {
        if (player_obj.y >= (room_height - 180))
        {
            __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + ((((room_height - 180) - (cameraHeight/2) - __view_get( e__VW.YView, 0 ))) * cameraSpeed) );
        }
        if (player_obj.y <= 180)
        {
            __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (((180 - (cameraHeight/2) - __view_get( e__VW.YView, 0 ))) * cameraSpeed) );
        }
    }
}

