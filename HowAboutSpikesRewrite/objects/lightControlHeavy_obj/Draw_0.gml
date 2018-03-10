if !surface_exists(surface)
{
    surface = surface_create(room_width, room_height);
    surfaceScale = 1/8;
}
else
{
    surface_set_target(surface);

    draw_clear(c_black);
    if (instance_exists(light_obj))
    {
        with(light_obj)
        {
            draw_set_blend_mode(bm_src_colour);
            draw_sprite_ext(light_spr, 0, x*other.surfaceScale, y*other.surfaceScale, lightSize*other.surfaceScale, lightSize * other.surfaceScale, 0, c_white, lightStrength);
            draw_set_blend_mode(bm_normal);
        }
    }
    if (instance_exists(lightFlickering_obj))
    {
        with(lightFlickering_obj)
        {
            draw_set_blend_mode(bm_src_colour);
            draw_sprite_ext(light_spr, 0, x*other.surfaceScale, y*other.surfaceScale, lightSize*other.surfaceScale, lightSize*other.surfaceScale, 0, c_white, lightStrength);
            draw_set_blend_mode(bm_normal);
        }
    }
    if (instance_exists(particleYellow_obj))
    {
        with(particleYellow_obj)
        {
            draw_set_blend_mode(bm_src_colour);
            draw_sprite_ext(light_spr, 0, x*other.surfaceScale, y*other.surfaceScale, lightSize*other.surfaceScale, lightSize*other.surfaceScale, 0, c_white, lightStrength);
            draw_set_blend_mode(bm_normal);
        }
    }
	if (instance_exists(particleWhite_obj))
    {
        with(particleWhite_obj)
        {
            draw_set_blend_mode(bm_src_colour);
            draw_sprite_ext(light_spr, 0, x*other.surfaceScale, y*other.surfaceScale, lightSize*other.surfaceScale, lightSize*other.surfaceScale, 0, c_white, lightStrength);
            draw_set_blend_mode(bm_normal);
        }
    }

    surface_reset_target();
    draw_surface_ext(surface, 0, 0, 1/surfaceScale, 1/surfaceScale, 0, c_white, 0.6);
}



