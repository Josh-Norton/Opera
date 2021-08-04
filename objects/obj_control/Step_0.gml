/// @description Insert description here
// You can write your code in this editor
if (game_over) {
	if (keyboard_check(ord("R"))) {
		room_restart();
	}
}
else if (!instance_exists(obj_ufo)) {
	game_over = true;
}