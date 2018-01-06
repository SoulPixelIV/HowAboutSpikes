///TrueLight_shader_uniforms();
//
//USAGE:
//This script is called from TrueLight_init() no user action is required.
//No arguments required.

//Check if PC can use shaders and if they're compiled
if !shaders_are_supported() {show_message("Sorry, your video card does not support shaders. Exiting"); game_end();}
if !shader_is_compiled(TrueLight_shadow_map_step_1) {show_message("Sorry, your video card does not support shader model 3. Exiting"); game_end();}
if !shader_is_compiled(TrueLight_shadow_map_step_2) {show_message("Sorry, your video card does not support shader model 3. Exiting"); game_end();}

//Get shader uinforms
uni_num_rays = shader_get_uniform(TrueLight_shadow_map_step_1, "numRays");
uni_light_threshold = shader_get_uniform(TrueLight_shadow_map_step_1, "THRESHOLD");

uni_light = shader_get_sampler_index(TrueLight_shadow_map_step_2, "light");
uni_angle = shader_get_uniform(TrueLight_shadow_map_step_2, "angle");
uni_blur_ammount = shader_get_uniform(TrueLight_shadow_map_step_2, "blur_amount");
uni_tex_color = shader_get_uniform(TrueLight_shadow_map_step_2, "tex_color");
uni_surface_size = shader_get_uniform(TrueLight_shadow_map_step_2, "surface_size");
uni_sprite_coords = shader_get_uniform(TrueLight_shadow_map_step_2, "sprite_coords");

uni_ambient_color = shader_get_uniform(TrueLight_ambient, "ambientColor");
uni_shaodw_texture = shader_get_sampler_index(TrueLight_ambient, "shadow_texture")
