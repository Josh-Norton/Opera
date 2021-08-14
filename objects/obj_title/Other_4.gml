/// @description Insert description here
// You can write your code in this editor
audio_play_sound(mus_title, 0, true);

fname = "ufo_save";
section = "data";
key = "highscore";

ini_open(fname);
highscore[0] = ini_read_real(section, key + "1", 0);
highscore[1] = ini_read_real(section, key + "2", 0);
ini_close();