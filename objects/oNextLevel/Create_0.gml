//State for the Button Image
state = 0; //0: idle, 1: active, 2: pressed
buttonText = "NEXT LEVEL";

if(oLevelManager.getCurrentLevelID(room) < array_length(oLevelManager.Room) - 1){
	buttonText = "NEXT LEVEL";
} else {
	buttonText = "FINISH GAME!";
}

function onButtonRelease() {
	
}

function onButtonPushed() {
	global.wave = 0;
	if(oLevelManager.getCurrentLevelID(room) < array_length(oLevelManager.Room) - 1){
		room_goto(oLevelManager.Room[oLevelManager.getCurrentLevelID(room) + 1]);
	} else {
		buttonText = "Finish Game!";
		room_goto(rMenu);
	}
}