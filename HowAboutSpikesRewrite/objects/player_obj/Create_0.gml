surface = surface_create(room_width, room_height);
surfaceScale = 1/8;
amount = 1;

///Vars

global.movSpeed = 2.65;
global.jumpStrength = 7.04;
global.numberJumps = 2;
global.gravityStrength = 0.46;
global.ladderSpeed = 3.25;
health = global.healthVar;
attackCooldown = 7;
pauseMenu = false;

horSpeed = 0;
verSpeed = 0;
movement = true;
cooldown = false;
dead = false;
deathCountVar = false;
textTimer = 100;
grounded = false;
landSound = false;
noDamage = false;
nearEnemy = false;
lastDir = 0;
landing = false;
onLadder = false;
invTimer = 90;
throw = false;
animPause = false;
fullJump = false;
dash = true;
dashTimer = 7;

global.hit = false;
global.state = 0;
global.damage = 20;
global.holding = noone;
global.numberJumpsSave = global.numberJumps;
global.checkpointX = 0;
global.checkpointY = 0;
global.checkpointRoom = 0;
global.restart = false;

///Save Game
if (room != tutorial && room != unknownForestBoss)
{
if (file_exists("save1.has"))
{
    file_delete("save1.has");
}
ini_open("save1.has");
var currRoom = room;

ini_write_real("Save1", "current room", currRoom);
ini_write_real("Save1", "money", global.money);
ini_write_real("Save1", "health", global.healthVar);
ini_write_real("Save1", "gamemode", global.mode);
ini_write_real("Save1", "death count", global.deathCount);
ini_close();
}

///Load Game

playerInst = player_obj;

if (global.continued == true)
{
    if (file_exists("save1.has"))
    {
        ini_open("save1.has");  

        with (playerInst)
        {
            instance_destroy();
        }
        room_goto(global.loadedRoom);
        global.transition = false;
        global.playerSpawnLocation = 0;
        ini_close();
    }
}

