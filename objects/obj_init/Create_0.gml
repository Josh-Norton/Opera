/// @description Insert description here
// You can write your code in this editor
width = window_get_width();
height = window_get_height();

surface_resize(application_surface, width, height);

var scale = 1;

bw = browser_width;
bh = browser_height;

while (width * (scale + 1) < bw && height * (scale + 1) < bh) {
	scale++;
}

window_set_size(width * scale, height * scale);