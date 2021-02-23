if (!oDebugManager.debug) {
    exit;
}

var xx = 0;
var cs = cellSize;

var r = roomWidth div cs;
repeat(r) {
    draw_line_color(xx, 0, xx, roomHeight, c_white, c_white);
    xx += cs;
}

var yy = 0;

var r = roomWidth div cs;
repeat(r) {
    draw_line_color(0, yy, roomWidth, yy, c_white, c_white);
    yy += cs;
}