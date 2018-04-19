function load_save(string file_name)
{
	// Read content into a string
    var fileid = file_text_open_read(file_name);
	var base64encoded_save = file_text_readln(fileid);
	file_text_close(fileid);

	// Decrypt the string and open it
	var ini = ini_open_from_string(base64_decode(base64encoded_save));
	return ini;
}

