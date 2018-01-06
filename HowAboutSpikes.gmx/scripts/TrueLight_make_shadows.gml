///TrueLight_make_shadows();
//
//USAGE:
//This script is intended to be called from the Draw Event of obj_TrueLight_controller
//No arguments required.

//Check surfaces exits
TrueLight_surface_check();

//Draw objcet and tile occluders to a surface
TrueLight_draw_occluders();
 
//Draw eveything to the final shadow surface ready to be drawn to the screen
surface_set_target(TrueLight_shadow_final_surface);
draw_clear(c_black);
draw_set_blend_mode(bm_add);

//For each light object, create the shadows within its range
for (i=0; i<ds_grid_height(TrueLight_light_grid); i+=1)
  {
    var object = TrueLight_light_grid[# 0, i];
       
    if instance_exists(object)
    {
    var _var_obj_xpos = (object.x - view_xview[TrueLight_room_view]) - (TrueLight_light_width/2);
    var _var_obj_ypos = (object.y - view_yview[TrueLight_room_view]) - (TrueLight_light_height/2);
    var _var_obj_color_red = color_get_red(object.image_blend)/255;
    var _var_obj_color_green = color_get_green(object.image_blend)/255;
    var _var_obj_color_blue = color_get_blue(object.image_blend)/255;        
    var _var_obj_color_strength = object.image_alpha;
    var _var_obj_image_angle = degtorad(object.image_angle);
    object.image_xscale = TrueLight_light_width / sprite_get_width(object.sprite_index);
    object.image_yscale = TrueLight_light_width / sprite_get_height(object.sprite_index);
    var _var_obj_sprite = sprite_get_texture(object.sprite_index, object.image_index);
    var _var_obj_coords = sprite_get_uvs(object.sprite_index, object.image_index);
    
    //Draw current light objects occluders within light range to a temp surface    
    surface_set_target(TrueLight_light_surf);
    draw_clear_alpha(c_black,1);
       draw_surface_part(TrueLight_occluders_surface, _var_obj_xpos, _var_obj_ypos, TrueLight_light_width, TrueLight_light_height, 0, 0);
    surface_reset_target();
    
    //Draw the temp surface to the polar to rect 1D shadow map
    surface_set_target(TrueLight_shadow_surface_rect);
    draw_clear_alpha(c_black,1);
        shader_set(TrueLight_shadow_map_step_1);
        shader_set_uniform_f(uni_num_rays, TrueLight_rays_cast);
        shader_set_uniform_f(uni_light_threshold, TrueLight_light_threshold);
        draw_surface(TrueLight_light_surf, 0, 0); //must be 254x1, DO NOT CHANGE
    surface_reset_target();
    shader_reset();

    //Convert the 1D shadow map from rect to polar coords
    shader_set(TrueLight_shadow_map_step_2);
          shader_set_uniform_f(uni_angle, _var_obj_image_angle);
          shader_set_uniform_f(uni_blur_ammount, TrueLight_shadow_blur_amount);
          shader_set_uniform_f(uni_tex_color, _var_obj_color_red, _var_obj_color_green, _var_obj_color_blue, _var_obj_color_strength);
          shader_set_uniform_f(uni_surface_size, TrueLight_light_width);       
          shader_set_uniform_f(uni_sprite_coords, _var_obj_coords[0], _var_obj_coords[1], _var_obj_coords[2], _var_obj_coords[3]);
          texture_set_stage(uni_light, _var_obj_sprite);
          draw_surface_stretched(TrueLight_shadow_surface_rect, _var_obj_xpos, _var_obj_ypos, TrueLight_light_width, TrueLight_light_height);
   shader_reset();
    }
}

draw_set_blend_mode(bm_normal);
surface_reset_target();
