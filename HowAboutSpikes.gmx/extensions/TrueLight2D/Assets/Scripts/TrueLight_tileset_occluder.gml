///TrueLight_tileset_occluder();

//USAGE:
//This script is called from TrueLight_draw_occluders() no user action is required.
//No arguments required.

for (_i=0; _i<ds_grid_height(TrueLight_tile_grid); _i+=1)
{

        _tile_xpos = TrueLight_tile_grid[# 0, _i];
        _tile_ypos = TrueLight_tile_grid[# 1, _i];
        
        if (_tile_xpos > view_xview[TrueLight_room_view]) and (_tile_xpos < (view_xview[TrueLight_room_view]+view_wview[TrueLight_room_view])) and (_tile_ypos > view_yview[TrueLight_room_view]) and (_tile_ypos < (view_yview[TrueLight_room_view]+view_hview[TrueLight_room_view]))
        {
        _tile_background = TrueLight_tile_grid[# 2, _i];
        _tile_left =  TrueLight_tile_grid[# 3, _i];
        _tile_top =  TrueLight_tile_grid[# 4, _i];
        _tile_width =  TrueLight_tile_grid[# 5, _i];
        _tile_height =  TrueLight_tile_grid[# 6, _i];

        draw_background_part(_tile_background, _tile_left, _tile_top, _tile_width, _tile_height, _tile_xpos - view_xview[TrueLight_room_view], _tile_ypos - view_yview[TrueLight_room_view]);
        }

}
