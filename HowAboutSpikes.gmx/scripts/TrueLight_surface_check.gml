///TrueLight_surface_check();
//
//USAGE:
//This script is called from TrueLight_make_shadows() no user action is required.
//No arguments required.

TrueLight_game_width = view_wview[TrueLight_room_view];
TrueLight_game_height = view_hview[TrueLight_room_view];

if !surface_exists(TrueLight_occluders_surface)
{
    TrueLight_occluders_surface = surface_create(TrueLight_game_width, TrueLight_game_height);
    surface_resize(TrueLight_occluders_surface, TrueLight_game_width, TrueLight_game_height);
}
    
if !surface_exists(TrueLight_shadow_surface_rect)
{
    TrueLight_shadow_surface_rect = surface_create(TrueLight_light_width, 1);
    surface_resize(TrueLight_shadow_surface_rect, TrueLight_light_width, 1);
}
    
if !surface_exists(TrueLight_shadow_final_surface)
{
    TrueLight_shadow_final_surface = surface_create(TrueLight_game_width, TrueLight_game_height);
    surface_resize(TrueLight_shadow_final_surface, TrueLight_game_width, TrueLight_game_height);
}

if !surface_exists(TrueLight_light_surf)
{
    TrueLight_light_surf = surface_create(TrueLight_light_width, TrueLight_light_height);
    surface_resize(TrueLight_light_surf, TrueLight_light_width, TrueLight_light_height);
}

if surface_get_width(application_surface) !=TrueLight_game_width
{
    surface_resize(application_surface, TrueLight_game_width, TrueLight_game_height);
}

if surface_get_height(application_surface) !=TrueLight_game_height
{
    surface_resize(application_surface, TrueLight_game_width, TrueLight_game_height);
}
