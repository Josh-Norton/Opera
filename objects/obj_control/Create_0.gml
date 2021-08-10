/// @description Insert description here
// You can write your code in this editor
layer = layer_create(-500);

var player_layer = layer_get_id("Instances");

if (obj_global_state.players == 1) {
	instance_create_layer(32, room_height / 2, player_layer, obj_player1);
} else {
	instance_create_layer(32, room_height / 2 - 32, player_layer, obj_player1);
	instance_create_layer(32, room_height / 2 + 32, player_layer, obj_player2);
}

game_over = false;
game_over_timer = 90;

game_over_width = 320;
game_over_height = 224;

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