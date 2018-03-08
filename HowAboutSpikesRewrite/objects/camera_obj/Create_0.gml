/// @description Set Camera View
if (instance_exists(player_obj))
{
    __view_set( e__VW.XView, 0, player_obj.x - (cameraWidth/2) );
    __view_set( e__VW.YView, 0, player_obj.y - (cameraHeight/2) );
}

///Vars
cameraSpeed = 0.06;
cameraWidth = 640;
cameraHeight = 360;

global.transition = false;

