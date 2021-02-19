draw_set_color(c_gray);
draw_set_alpha(0.6);

var length;
var vectorX, vectorY;

vectorX = (x-(room_width / 2)) / (room_width / 2);
vectorY = (y-(room_height / 2)) / (room_height / 2);

length = 2;

draw_line_width(x + vectorX * sqr(height), y + vectorY * sqr(height), x + vectorX * sqr(height + length), y + vectorY * sqr(height + length), 2);

draw_set_alpha(1);
draw_set_color(c_white);
