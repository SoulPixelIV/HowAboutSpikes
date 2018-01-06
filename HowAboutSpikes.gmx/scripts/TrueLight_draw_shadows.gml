///TrueLight_draw_shadows();

//USAGE:
//This script is intended to be called from the Post Draw Event of obj_TrueLight_conntroller
//No arguments required.

shader_set(TrueLight_ambient);
    shader_set_uniform_f(uni_ambient_color, TrueLight_ambient_red, TrueLight_ambient_green, TrueLight_ambient_blue, TrueLight_ambient_strength);
    texture_set_stage(uni_shaodw_texture, surface_get_texture(TrueLight_shadow_final_surface) );
    draw_surface_stretched(application_surface, 0, 0, window_get_width(), window_get_height()); 
shader_reset();
