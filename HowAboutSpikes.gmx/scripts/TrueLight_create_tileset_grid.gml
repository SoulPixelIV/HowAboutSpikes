///TrueLight_create_tileset_grid();
//
//USAGE:
//This script is called from TrueLight_init() no user action is required.
//No arguments required.

_tile_size = TrueLight_tileset_size;

_total_number_tiles_per_layer = 1;

TrueLight_tile_grid = ds_grid_create(7, _total_number_tiles_per_layer);

if TrueLight_tileset_layer != -1
{

for (_x=0; _x<room_width; _x+=_tile_size)
{
    for (_y=0; _y<room_height; _y+=_tile_size)
    {
    var _tile_current = tile_layer_find(TrueLight_tileset_layer, _x, _y);
    
      if tile_exists(_tile_current)
      {        
        TrueLight_tile_grid[# 0, _total_number_tiles_per_layer-1] = tile_get_x(_tile_current);
        TrueLight_tile_grid[# 1, _total_number_tiles_per_layer-1] = tile_get_y(_tile_current);
        TrueLight_tile_grid[# 2, _total_number_tiles_per_layer-1] = tile_get_background(_tile_current);
        TrueLight_tile_grid[# 3, _total_number_tiles_per_layer-1] = tile_get_left(_tile_current);
        TrueLight_tile_grid[# 4, _total_number_tiles_per_layer-1] = tile_get_top(_tile_current);
        TrueLight_tile_grid[# 5, _total_number_tiles_per_layer-1] = tile_get_width(_tile_current);
        TrueLight_tile_grid[# 6, _total_number_tiles_per_layer-1] = tile_get_height(_tile_current);

        _total_number_tiles_per_layer ++;  
        ds_grid_resize(TrueLight_tile_grid, 7, _total_number_tiles_per_layer);
      }
    }
}

}
