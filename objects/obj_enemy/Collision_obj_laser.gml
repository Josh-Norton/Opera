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
	
	instance_destroy();
}

flash = 5;