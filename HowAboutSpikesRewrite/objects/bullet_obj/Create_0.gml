movSpeed = 2.75;
invincible = true;
alarm[0] = 13;

image_speed = 0.2;

move_towards_point(player_obj.x, player_obj.y, movSpeed);

if (instance_exists(player_obj))
{
    image_angle = point_direction(x, y, player_obj.x, player_obj.y) + 90;
}
else
{
    image_angle = 90;
}

