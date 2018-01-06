///TrueLight_draw_occluders();

//USAGE:
//This script is called from TrueLight_make_shadows() no user action is required.
//No arguments required.

surface_set_target(TrueLight_occluders_surface);
    draw_clear_alpha(c_black, 1);
    
    if TrueLight_tileset_layer != -1
    {
      TrueLight_tileset_occluder();
    }
    
    with(TrueLight_occluder_parent) event_perform(ev_other, ev_user0);
surface_reset_target();
