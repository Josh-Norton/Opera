/// @description Insert description here
// You can write your code in this editor
event_inherited();

player = other.player;

with (obj_enemy) {
	death_sound = false;
	event_user(1);
}

audio_play_sound(snd_break, 0, false);