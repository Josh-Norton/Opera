/// @description Insert description here
// You can write your code in this editor
if (bh != browser_height || bw != browser_width) {
	var scale = 1;

	bw = abs(browser_width);
	bh = abs(browser_height);

	while (width * (scale + 1) < bw && height * (scale + 1) < bh) {
		scale++;
	}

	window_set_size(width * scale, height * scale);
}