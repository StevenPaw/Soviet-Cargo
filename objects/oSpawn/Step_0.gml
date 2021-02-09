//Makes sure after pausing the alarm is still working:
if(alarm[0] < -1 && global.gameSpeed > 0) {
	alarm[0] = 1;
}

if(alarm[1] < -1 && global.gameSpeed > 0) {
	alarm[1] = 1;
}