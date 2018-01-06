///TrueLight_surface_init(width, height);
//
//USAGE:
//This script is called from TrueLight_init():
//Width = the width the light source. (sprite or background width)
//Height = the height of the light source. (sprite or background height)
//
//NOTE: All lights must be of the same width and height and dimenions that
//are to the power of 2. eg: 128x128, 512x512, 256x128, 64x512.
//This engine cannot handle lights of differnt sizes, if you need smaller
//lights just keep the dimensions the same and use less of the texture area.
//eg: spr_light_round = 256x256. spr_light_triabgle = 256x256 (it cannot be 128x128)

TrueLight_occluders_surface = surface_create(TrueLight_game_width, TrueLight_game_height);
surface_resize(TrueLight_occluders_surface, TrueLight_game_width, TrueLight_game_height);

TrueLight_shadow_surface_rect = surface_create(TrueLight_light_width, 1);
surface_resize(TrueLight_shadow_surface_rect, TrueLight_light_width, 1);

TrueLight_shadow_final_surface = surface_create(TrueLight_game_width, TrueLight_game_height);
surface_resize(TrueLight_shadow_final_surface, TrueLight_game_width, TrueLight_game_height);

TrueLight_light_surf = surface_create(TrueLight_light_width, TrueLight_light_height);
surface_resize(TrueLight_light_surf, TrueLight_light_width, TrueLight_light_height);

surface_resize(application_surface, TrueLight_game_width, TrueLight_game_height);
