/// @description Insert description here
// You can write your code in this editor
if (browser) {
	new_bw = browser_width;
	new_bh = browser_height;
}
else {
	new_bw = display_get_width();
	new_bh = display_get_width();
}

if (bh != new_bh || bw != new_bw) {
	var scale = 1;

	bw = abs(new_bw);
	bh = abs(new_bh);

	while (width * (scale + 1) < bw && height * (scale + 1) < bh) {
		scale++;
	}

	window_set_size(width * scale, height * scale);
}