var buffer = argument[0];
var message_id = buffer_read(buffer, buffer_u8);

switch(message_id)
{
    case 1:
        global.playerClientx = buffer_read(buffer, buffer_u32);
        global.playerClienty = buffer_read(buffer, buffer_u32);
        global.playerClientxScale = buffer_read(buffer, buffer_s8);
        if (!instance_exists(playerServer_obj))
        {
            instance_create(global.playerClientx, global.playerClienty, playerServer_obj);
        }
        playerServer_obj.x = global.playerClientx;
        playerServer_obj.y = global.playerClienty;
        playerServer_obj.image_xscale = global.playerClientxScale;
        
        break;
    case 2:
        global.playerClientBackx = buffer_read(buffer, buffer_u32);
        global.playerClientBacky = buffer_read(buffer, buffer_u32);
        global.playerClientBackxScale = buffer_read(buffer, buffer_s8);
        if (!instance_exists(playerClientBack_obj))
        {
            instance_create(global.playerClientBackx, global.playerClientBacky, playerClientBack_obj);
        }
        playerClientBack_obj.x = global.playerClientBackx;
        playerClientBack_obj.y = global.playerClientBacky;
        playerClientBack_obj.image_xscale = global.playerClientBackxScale;
        break;
}
