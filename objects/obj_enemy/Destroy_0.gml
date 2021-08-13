/// @description Insert description here
// You can write your code in this editor
if (death_sound) {
	audio_play_sound(snd_break, 0, false);
}

for (var i = 0; i < 5; i++) {
	var part = instance_create_layer(x, y, "Instances", obj_part);
	part.sprite_index = part_sprite;
}