buffer = buffer_create(1024, buffer_fixed, 1);

buffer_seek(buffer, buffer_seek_start, 0);

buffer_write(buffer, buffer_u8, 1);
buffer_write(buffer, buffer_u32, player_obj.x);
buffer_write(buffer, buffer_u32, player_obj.y);
buffer_write(buffer, buffer_s8, player_obj.image_xscale);
buffer_write(buffer, buffer_s8, player_obj.move);
buffer_write(buffer, buffer_s8, global.mpkeyThrow);
buffer_write(buffer, buffer_s8, global.mpkeyAttack);
buffer_write(buffer, buffer_s8, global.mpkeyEnter);

network_send_packet(client_socket, buffer, buffer_tell(buffer));

buffer_delete(buffer);
