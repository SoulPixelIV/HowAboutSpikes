///TrueLight_draw_sprite_view(sprite,subimage,x,y,xcale,yscale,rot,colour,alpha)

//Usage:

//sprite = The index of the sprite to draw.
//subimg = The subimg (frame) of the sprite to draw (image_index or -1 correlate to the current frame of animation in the object).
//x = The x coordinate of where to draw the sprite.
//y = The y coordinate of where to draw the sprite.
//xscale = The horizontal scaling of the sprite, as a multiplier: 1 = normal scaling, 0.5 is half etc...
//yscale = The vertical scaling of the sprite as a multiplier: 1 = normal scaling, 0.5 is half etc...
//rot = The rotation of the sprite. 0=right way up, 90=rotated 90 degrees counter-clockwise etc...
//colour = The colour with which to blend the sprite. c_white is to display it normally.
//alpha = The alpha of the sprite (from 0 to 1 where 0 is transparent and 1 opaque).
//*Note* above description is taken from GM:Studio manual.

draw_sprite_ext(argument0, argument1, argument2-view_xview[obj_TrueLight_controller.TrueLight_room_view], argument3-view_yview[obj_TrueLight_controller.TrueLight_room_view],argument4,argument5,argument6,argument7,argument8);
