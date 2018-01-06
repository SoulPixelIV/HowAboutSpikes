///TrueLight_init(light_parent, occluder_parent, tileset_layer, tileset_size, shadow_blur, rays_cast, threshold, ambient_red, ambient_green, ambient_blue, ambient_strength, light_width, light_height, room_view);
//
//USAGE:
//This script is intended to be called from the Create Event of obj_TrueLight_controller
//light_parent = the parent object used by the light sources eg: par_TrueLight_lights
//occluder_parent = the parent object used by the occluder (shadow caster) eg: par_TrueLight_occluders
//tileset_layer = the tileset layer used as occluders (shadow caster) eg: 1000 or -1 to not use tilelayer
//tileset_size = the size of the tileset_layer used eg: 64  or -1 to not use tilelayer
//shadow_blur = the ammount to blur the shadow, higher = softer edges. Range: 0.0 - 1.0
//rays_cast = number of rays to cast from each light, do not exceed light_width & light_height.
//threshold = the ammount of light that will pass through an occluder. Range: 0.0 - 1.0 with 0 being no light will pass through and 1 being all light will pass through.
//ambient_red = ambient light color amount of red. Range: 0 - 254 with 0 being no red and 254 begin full red.
//ambient_green = ambient light color amount of green. Range: 0 - 254 with 0 being no green and 254 begin full green.
//ambient_blue = ambient light color amount of blue. Range: 0 - 254 with 0 being no blue and 254 begin full blue.
//ambient_strength = ambient strength amount. Range: 0 - 254 with 0 being pitch black and 254 being full bright.
//light_width = the width the light source. (sprite width)
//light_height = the height of the light source. (sprite height)
//room_view = the view in the room you wish to use. 0 - 7 or -1 to not use views.
//
//TrueLight2D created by xygthop3 - May 2014
//Michael Brown
//GMC: http://gmc.yoyogames.com/index.php?showuser=42927
//Twitter: @xygthop3
//
//Project started 25th April 2014 - First public release July 2014

TrueLight_light_parent = argument0;
TrueLight_occluder_parent = argument1;
TrueLight_tileset_layer = argument2;
TrueLight_tileset_size = argument3;
TrueLight_shadow_blur_amount = argument4;
TrueLight_rays_cast = argument5;
TrueLight_light_threshold = argument6;
TrueLight_ambient_red = argument7;
TrueLight_ambient_green = argument8;
TrueLight_ambient_blue = argument9;
TrueLight_ambient_strength = argument10;
TrueLight_light_width = argument11;
TrueLight_light_height = argument12;
TrueLight_room_view = argument13;
TrueLight_game_width = view_wview[TrueLight_room_view];
TrueLight_game_height = view_hview[TrueLight_room_view];


///Setup game
draw_texture_flush();
draw_set_color(c_white);
draw_set_alpha_test(true);
draw_set_alpha_test_ref_value(1);
application_surface_draw_enable(false);

//It's go time
TrueLight_surface_init(TrueLight_light_width, TrueLight_light_height);
TrueLight_shader_uniforms();
TrueLight_create_grid();
TrueLight_create_tileset_grid();
