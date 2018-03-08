if (place_meeting(x, y, player_obj))
{
    global.pickedPet = true;
    instance_create(x, y, petBird_obj);
    instance_destroy();
}

