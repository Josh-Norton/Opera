/// @description Insert description here
// You can write your code in this editor
browser = os_browser != browser_not_a_browser;

width = window_get_width();
height = window_get_height();

surface_resize(application_surface, width, height);

var scale = 1;

if (browser) {
	bw = browser_width;
	bh = browser_height;
}
else {
	bw = display_get_width();
	bh = display_get_width();
}

while (width * (scale + 1) < bw && height * (scale + 1) < bh) {
	scale++;
}

window_set_size(width * scale, height * scale);