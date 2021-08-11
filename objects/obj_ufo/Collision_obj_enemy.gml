/// @description Insert description here
// You can write your code in this editor
if (flashing_timer <= 0) {
	
	if(!shield_activated){
	hp--;
	flashing_timer = flashing_timer_max;
	audio_play_sound(snd_hurt, 0, false);
	}
	
	
}