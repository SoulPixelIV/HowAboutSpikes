    global.pt_rain = part_type_create();
    var pt = global.pt_rain;
    
    part_type_shape(pt, pt_shape_line);
    part_type_size(pt, .5, .6, 0, 0);
    part_type_colour1(pt, c_blue);
    part_type_speed(pt, 1.3, 2.8, 0, 0);
    part_type_direction(pt, 290, 310, 0, 4);
    part_type_life(pt, 800, 800);

