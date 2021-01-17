oldColor = draw_get_color();

if((nearest.cost / 2) > global.coins) {
draw_set_color(c_green);
}
draw_self();

draw_set_color(oldColor);