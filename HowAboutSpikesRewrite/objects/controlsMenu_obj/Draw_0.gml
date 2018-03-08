/// @description Menu GUI
draw_set_font(mainmenu_fnt);
draw_text(16, 160, string_hash_to_newline("Move Left: " + string(chr(leftKey))));
draw_text(16, 192, string_hash_to_newline("Move Right: " + string(chr(rightKey))));
draw_text(16, 224, string_hash_to_newline("Jump: " + string(chr(jumpKey))));
draw_text(16, 256, string_hash_to_newline("Attack: " + string(chr(attackKey))));
draw_text(16, 288, string_hash_to_newline("Throw: " + string(chr(throwKey))));
draw_text(16, 320, string_hash_to_newline("Back: "));

if (userInput == true)
{
    draw_text(50, 50, string_hash_to_newline("PRESS KEY!"));
}

