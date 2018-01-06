///TrueLight_create_grid();
//
//USAGE:
//This script is called from TrueLight_init() no user action is required.
//No arguments required.

TrueLight_light_grid = ds_grid_create(1,instance_number(TrueLight_light_parent));

for (i=0; i<instance_number(TrueLight_light_parent); i+=1)
  {    
    TrueLight_light_grid[# 0, i] = instance_find(TrueLight_light_parent, i);
}
