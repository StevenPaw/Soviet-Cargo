draw_self();
oldFont = draw_get_font();
draw_set_font(fTopGui);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text(x + 10 + sprite_width / 2, y + costPlace_start, string(cost));
draw_set_color(c_white);
draw_set_font(oldFont);