
function isInRange(arg0, arg1, arg2, arg3)
{
var xx = argument0;
var yy = argument1;
var width = argument2 / 3;
var height = argument3 / 3;

xx = (xx - width/2);
yy = (yy - height/2);

if(mouse_x > xx && mouse_x < xx + width){
	if(mouse_y > yy && mouse_y < yy + height){
		return true;
	}else return false;
}else return false;
}