/// @description Draw Player Reflection

draw_self();
var Draw = 0;

if (place_meeting(x, y, player_obj))
{
    Draw = 1;
}

if (Draw == 1)
{
    with (player_obj)
    {
        if (lastDir == 0)
        {
            with (water_obj)
            {
                draw_sprite_ext(player_obj.sprite_index,player_obj.image_index,player_obj.x, player_obj.y + 20,1,-0.5,0,image_blend,.025);
            }
        }
        else
        {
            with (water_obj)
            {
                draw_sprite_ext(player_obj.sprite_index,player_obj.image_index,player_obj.x, player_obj.y + 20,-1,-0.5,0,image_blend,.025);
            }
        }
    }
}

