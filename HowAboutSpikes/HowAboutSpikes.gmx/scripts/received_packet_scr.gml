var buffer = argument[0];
var message_id = buffer_read(buffer, buffer_u8);

//MP Help Vars
global.playerClientBackKeyThrow = 0;
global.playerClientBackKeyAttack = 0;
global.playerClientKeyThrow = 0;
global.playerClientKeyAttack = 0;

switch(message_id)
{
    case 1:
        global.playerClientx = buffer_read(buffer, buffer_u32);
        global.playerClienty = buffer_read(buffer, buffer_u32);
        global.playerClientxScale = buffer_read(buffer, buffer_s8);
        global.playerClientHorSpeed = buffer_read(buffer, buffer_s8);
        global.playerClientKeyThrow = buffer_read(buffer, buffer_s8);
        global.playerClientKeyAttack = buffer_read(buffer, buffer_s8);
        if (!instance_exists(playerServer_obj))
        {
            instance_create(global.playerClientx, global.playerClienty, playerServer_obj);
        }
        playerServer_obj.x = global.playerClientx;
        playerServer_obj.y = global.playerClienty;
        playerServer_obj.image_xscale = global.playerClientxScale;
        playerServer_obj.mpkeyThrow = global.playerClientKeyThrow;
        playerServer_obj.mpkeyAttack = global.playerClientKeyAttack;
        global.mpMove = global.playerClientHorSpeed;
        
        break;
    case 2:
        global.playerClientBackx = buffer_read(buffer, buffer_u32);
        global.playerClientBacky = buffer_read(buffer, buffer_u32);
        global.playerClientBackxScale = buffer_read(buffer, buffer_s8);
        global.playerClientBackHorSpeed = buffer_read(buffer, buffer_s8);
        global.playerClientBackKeyThrow = buffer_read(buffer, buffer_s8);
        global.playerClientBackKeyAttack = buffer_read(buffer, buffer_s8);
        if (!instance_exists(playerServer_obj))
        {
            instance_create(global.playerClientBackx, global.playerClientBacky, playerServer_obj);
        }
        playerServer_obj.x = global.playerClientBackx;
        playerServer_obj.y = global.playerClientBacky;
        playerServer_obj.image_xscale = global.playerClientBackxScale;
        playerServer_obj.mpkeyThrow = global.playerClientBackKeyThrow;
        playerServer_obj.mpkeyAttack = global.playerClientBackKeyAttack;
        global.mpMove = global.playerClientBackHorSpeed;
        break;
}
