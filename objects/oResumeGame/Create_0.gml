

//State for the Button Image
state = 0; //0: idle, 1: active, 2: pressed
buttonText = "RESUME GAME";

function onButtonRelease() {
	
}

function onButtonPushed() {
	oPauseScreen.isActive = false;
}