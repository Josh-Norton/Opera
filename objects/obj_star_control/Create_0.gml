/// @description Insert description here
// You can write your code in this editor
layer_stars1 = layer_create(50);
layer_stars2 = layer_create(60);

timer_max = 3;
timer = timer_max;

var jump_ahead = 512;

for (var i = 0; i < jump_ahead; i++) {
	event_perform(ev_step, ev_step_normal);
	with (obj_star) {
		event_perform(ev_step, ev_step_normal);
	}
}