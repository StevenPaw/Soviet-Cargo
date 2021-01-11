

//State for the Button Image
state = 0; //0: idle, 1: active, 2: pressed
text = "RETRY";

function onButtonRelease() {
	
}

function onButtonPushed() {
	global.wave = 0;
	room_goto(oLevelManager.Room[oLevelManager.getCurrentLevelID(room)]);
}