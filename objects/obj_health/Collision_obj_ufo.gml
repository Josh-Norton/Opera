/// @description Insert description here
// You can write your code in this editor
event_inherited();

with(other){
	if (hp < hp_max) {
		hp++;
	}
}

if (obj_global_state.players > 1) {
	if (!instance_exists(obj_player1)) {
		var player = instance_create_layer(32, room_height / 2, layer, obj_player1);
		player.hp = 1;
		player.flashing_timer = player.flashing_timer_max;
	}
	if (!instance_exists(obj_player2)) {
		var player = instance_create_layer(32, room_height / 2, layer, obj_player2);
		player.hp = 1;
		player.flashing_timer = player.flashing_timer_max;
	}
}