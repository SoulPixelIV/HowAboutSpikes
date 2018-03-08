x = x + hspeed;
y = y + vspeed;

switch (dir)
{
    case 0:
    hspeed = 0.02;
    vspeed = 0.002;
    break;
    
    case 1:
    hspeed = -0.023;
    vspeed = -0.01;
    break;
    
    case 2:
    vspeed = 0.013;
    hspeed = 0.001;    
    break;
    
    case 3:
    vspeed = -0.0214;
    hspeed = 0.003;
    break;
}

