/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_die, 0, false);

var explosion = instance_create_layer(x, y, /*obj_control.*/layer, obj_explosion);
explosion.player = player;

for (var i = 0; i < 20; i++) {
	var spark = instance_create_layer(x, y, layer, obj_spark);
	spark.player = player;
}