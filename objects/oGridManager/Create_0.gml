mx = 0;
my = 0;

cellSize = 128;
roomWidth = room_width;
roomHeight = room_height;

function drawSnapped(curX, curY, sprite, img) {

    var cs = cellSize;
    var xx = (curX div cs);
    var yy = (curY div cs);

    xx = xx * cs;
    yy = yy * cs;

    draw_sprite(sprite, img, xx + (cs / 2), yy + (cs / 2));
}

function drawSnappedExt(curX, curY, sprite, img, xScale, yScale, rot, col, alpha) {

    var cs = cellSize;
    var xx = (curX div cs);
    var yy = (curY div cs);

    xx = xx * cs;
    yy = yy * cs;

    draw_sprite_ext(sprite, img, xx + (cs / 2), yy + (cs / 2), xScale, yScale, rot, col, alpha);
}

function placeSnapped(curX, curY, object, layer) {

    var cs = cellSize;
    var xx = (curX div cs);
    var yy = (curY div cs);

    xx = xx * cs;
    yy = yy * cs;

    instance_create_layer(xx + (cs / 2), yy + (cs / 2), layer, object);
}

function moveSnapped(curXorY) {

    var cs = cellSize;
    var xy = (curXorY div cs);

    xy = xy * cs;

    return xy + (cs / 2);
}