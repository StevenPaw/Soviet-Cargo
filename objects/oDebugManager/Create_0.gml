/// @description Initialize Variables
debug = false;
moveDebugX = 0;
moveDebugY = 150;

//Initialize Arrays
textInfo[0] = "DEBUG MODE";
textValue[0] = "ACTIVE";



//Function to add Shadow to Text:
/// @function draw_debug_text(x, y, string);
/// @param x
/// @param y
/// @param string
function draw_debug_text(x,y,text){
    var _x, _y, _string;
    _x = argument[0];
    _y = argument[1];
    _string = argument[2];
    _font = fDebug;
    _shadow_size = 2;
    _shadow_colour = c_black;
    _text_colour = c_fuchsia;
	_offset_x = 0;
	_offset_y = 0;
	_blurfactor = 10;
	_shadow_strenght = 1;
	
    draw_set_font(_font);
	var shadow_strenght_calc = _shadow_strenght/(_blurfactor * _blurfactor)
	draw_set_alpha(shadow_strenght_calc);
    draw_set_colour(_shadow_colour);
	var bx = _blurfactor/2;
	var by = _blurfactor/2;
	for (ix = 0; ix < _blurfactor; ix++) {
    for (iy = 0; iy < _blurfactor; iy++) {
        draw_text((_x-bx) +_offset_x + ix, (_y-by) +_offset_y + iy, string(_string));
    }
}
	
    draw_text((_x + _shadow_size), (_y + _shadow_size), string(_string));
	draw_set_alpha(0.8);
    draw_set_colour(_text_colour);
    draw_text(_x, _y, string(_string));
	draw_set_alpha(1);
}