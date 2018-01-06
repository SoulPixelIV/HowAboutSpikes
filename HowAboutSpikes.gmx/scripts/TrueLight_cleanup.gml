///TrueLight_cleanup();
//
//USAGE:
//This script is intended to be called from the Game End Event of obj_TrueLight_controller
//No arguments required.

if ds_exists(TrueLight_light_grid, ds_type_grid) ds_grid_destroy(TrueLight_light_grid);
if ds_exists(TrueLight_tile_grid, ds_type_grid) ds_grid_destroy(TrueLight_tile_grid);

if surface_exists(TrueLight_occluders_surface)
{
    surface_free(TrueLight_occluders_surface);
}
    
if surface_exists(TrueLight_shadow_surface_rect)
{
    surface_free(TrueLight_shadow_surface_rect);
}
    
if surface_exists(TrueLight_light_surf)
{
    surface_free(TrueLight_light_surf);
}
   
if surface_exists(TrueLight_shadow_final_surface)
{
    surface_free(TrueLight_shadow_final_surface);
}

if surface_exists(application_surface)
{
    surface_free(application_surface);
}
