x = x + hspeed;
hspeed = 0.06;
image_speed = 0.08;

if (place_meeting(x, y, hitbox_obj))
{
    enemyHealth = enemyHealth - global.damage / 4;
}
if (place_meeting(x, y, scythe_obj))
{
    enemyHealth = enemyHealth - global.damage / 2;
}

//###Death###
if (enemyHealth <= 0)
{
    instance_deactivate_object(self);
}

