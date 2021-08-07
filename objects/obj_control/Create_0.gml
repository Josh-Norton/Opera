/// @description Insert description here
// You can write your code in this editor
layer = layer_create(-500);

game_over = false;

points = 0;

fname = "ufo_save";
section = "data";
key = "highscore";

ini_open(fname);
highscore = ini_read_real(section, key, 0);
ini_close();