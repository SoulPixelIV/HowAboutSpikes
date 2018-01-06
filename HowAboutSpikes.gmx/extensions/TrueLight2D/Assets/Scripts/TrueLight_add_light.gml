///TrueLight_add_light(x,y,light_object)
//
//USAGE:
//This script is intended to be called from an Action Event of obj_TrueLight_controller
//x = The x coordinate of where to create the light
//y = The y coordinate of where to create the light
//light_object = The light object to create an instance of, not the parent. eg: obj_spot_light

_new_light_object = instance_create(argument0,argument1,argument2);

_next_light = ds_grid_height(TrueLight_light_grid);

ds_grid_resize(TrueLight_light_grid, 1, _next_light+1);

TrueLight_light_grid[# 0, _next_light] = _new_light_object;
