draw_self();
if (enemyHealth < 100)
{
    draw_healthbar(x - 32, y - 28, x + 32, y - 23, enemyHealth, c_black, c_green, c_green, 0, true, true);
}

