/// @description Insert description here
// You can write your code in this editor
layer = layer_create(-500);

game_over = false;

points[0] = 0;
points[1] = 0;
total_points = 0;

p1_color = make_color_hsv(0, 48, 255);
p2_color = make_color_hsv(128, 48, 255);

fname = "ufo_save";
section = "data";
key = "highscore";

ini_open(fname);
highscore = ini_read_real(section, key, 0);
ini_close();