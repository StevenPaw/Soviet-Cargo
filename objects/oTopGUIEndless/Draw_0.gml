draw_self();

//1 get old Settings
oldColor = draw_get_color();
oldhAlign = draw_get_halign();
oldvAlign = draw_get_valign();
oldFont = draw_get_font();

//2 set new Settings
draw_set_font(fTopGui);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(x + sprite_width / 2 - 250, y + sprite_height / 2, string(global.wave));

//Display PlayerHealth
if(global.playerHP > 3)
{
	draw_set_color(c_white);
} else {
	draw_set_color(c_red);
}
draw_text(x + sprite_width / 2 - 80, y + sprite_height / 2, string(global.playerHP));
draw_set_color(c_white);

//Display PowerUsage
if(global.poweruse < global.maxPoweruse)
{
	draw_set_color(c_white);
} else {
	draw_set_color(c_red);
}
draw_text(x + sprite_width / 2 + 100, y + sprite_height / 2, string(global.poweruse) + "/" + string(global.maxPoweruse));
draw_set_color(c_white);

draw_text(x + sprite_width / 2 + 270, y + sprite_height / 2, string(global.coins));

//3 regain old Settings
draw_set_color(oldColor);
draw_set_halign(oldhAlign);
draw_set_valign(oldvAlign);
draw_set_font(oldFont);