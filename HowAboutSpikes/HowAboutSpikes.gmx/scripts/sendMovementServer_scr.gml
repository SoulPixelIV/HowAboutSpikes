buffer = buffer_create(1024, buffer_fixed, 1);

buffer_seek(buffer, buffer_seek_start, 0);

buffer_write(buffer, buffer_u8, 2);
buffer_write(buffer, buffer_u32, player_obj.x);
buffer_write(buffer, buffer_u32, player_obj.y);
buffer_write(buffer, buffer_s8, player_obj.image_xscale);

network_send_packet(socket, buffer, buffer_tell(buffer));

buffer_delete(buffer);
