draw_set_color(c_gray);
draw_set_alpha(0.6);

var length;
var vectorX, vectorY;

vectorX = (x-(pointToFallToX)) / (pointToFallToX);
vectorY = (y-(pointToFallToY)) / (pointToFallToY);

length = 2;

draw_line_width(x + vectorX * sqr(height), y + vectorY * sqr(height), x + vectorX * sqr(height + length), y + vectorY * sqr(height + length), 2);

draw_set_alpha(1);
draw_set_color(c_white);
