/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_hit, 0, false);

instance_destroy(other);

hp--;
if (hp <= 0) {
	event_user(1);
}

flash = 5;

var part = instance_create_layer(x, y, "Instances", obj_part);
part.sprite_index = part_sprite;