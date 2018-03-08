with (player_obj) {
if ((place_meeting(x, y, checkpoint_obj)) || (place_meeting(x, y, checkpointMystery_obj)))
{
    instance_activate_object(explosiveBlock_obj);
    with (explosiveBlock_obj)
    {
        event_perform(ev_create, 0);
    }
}

}
