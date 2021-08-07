/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_break, 0, false);

for (var i = 0; i < 5; i++) {
	instance_create_layer(x, y, "Instances", obj_rock_part);
}

obj_control.points += 100;