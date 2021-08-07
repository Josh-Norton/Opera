/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_hit, 0, false);

instance_destroy(other);

hp--;
if (hp <= 0) {
	instance_destroy();
}

flash = 5;