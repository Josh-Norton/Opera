/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_hit, 0, false);

instance_destroy(other);

hp--;
if (hp <= 0) {
	if (!obj_control.game_over) {
		var player = other.player;
	
		obj_control.points[player-1] += points_value;

		var points = instance_create_layer(x, y, obj_control.layer, obj_points);
		points.value = points_value;
		points.player = player;
	}
	
	if (instance_exists(obj_ufo)) {
		var max_chance = obj_ufo.hp_max * obj_global_state.players;
		var chance = max_chance;
	
		chance -= instance_number(obj_health);
	
		if (instance_exists(obj_player1)) {
			chance -= obj_player1.hp;
		}
		if (instance_exists(obj_player2)) {
			chance -= obj_player2.hp;
		}
	
		chance /= max_chance;
	
		if (random(1) < (hp_chance_max * chance)) {
			instance_create_layer(x, y, layer, obj_health);
		}
	}
	
	instance_destroy();
}

flash = 5;