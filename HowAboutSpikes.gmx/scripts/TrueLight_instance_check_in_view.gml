///TrueLight_instance_check_in_view();
//
//USAGE:
//This script is intended to be called from the Step Event of obj_TrueLight_controller
//No arguments required.

instance_deactivate_object(TrueLight_light_parent);
instance_deactivate_object(TrueLight_occluder_parent);
instance_activate_region(view_xview[TrueLight_room_view]-(TrueLight_light_width), view_yview[TrueLight_room_view]-(TrueLight_light_height), view_wview[TrueLight_room_view]+(TrueLight_light_width*2), view_hview[TrueLight_room_view]+(TrueLight_light_height*2), 1);
