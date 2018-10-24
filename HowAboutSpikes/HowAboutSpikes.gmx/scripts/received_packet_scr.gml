var buffer = argument[0];
var message_id = buffer_read(buffer, buffer_u8);

switch(message_id)
{
    case 1:
        global.playerClientx = buffer_read(buffer, buffer_u32);
        global.playerClienty = buffer_read(buffer, buffer_u32);
        global.playerClientxScale = buffer_read(buffer, buffer_s8);
        global.playerClientHorSpeed = buffer_read(buffer, buffer_u8);
        if (!instance_exists(playerServer_obj))
        {
            instance_create(global.playerClientx, global.playerClienty, playerServer_obj);
        }
        playerServer_obj.x = global.playerClientx;
        playerServer_obj.y = global.playerClienty;
        playerServer_obj.image_xscale = global.playerClientxScale;
        global.mpMove = global.playerClientHorSpeed;
        
        break;
    case 2:
        global.playerClientBackx = buffer_read(buffer, buffer_u32);
        global.playerClientBacky = buffer_read(buffer, buffer_u32);
        global.playerClientBackxScale = buffer_read(buffer, buffer_s8);
        global.playerClientBackHorSpeed = buffer_read(buffer, buffer_u8);
        if (!instance_exists(playerServer_obj))
        {
            instance_create(global.playerClientBackx, global.playerClientBacky, playerServer_obj);
        }
        playerServer_obj.x = global.playerClientBackx;
        playerServer_obj.y = global.playerClientBacky;
        playerServer_obj.image_xscale = global.playerClientBackxScale;
        global.mpMove = global.playerClientBackHorSpeed;
        break;
}
