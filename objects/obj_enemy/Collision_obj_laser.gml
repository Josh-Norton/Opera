/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_hit, 0, false);

instance_destroy(other);

hp--;
if (hp <= 0) {
	obj_control.points += points_value;

	var points = instance_create_layer(x, y, obj_control.layer, obj_points);
	points.value = points_value;
	
	instance_destroy();
}

flash = 5;