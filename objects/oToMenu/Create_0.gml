//State for the Button Image
state = 0; //0: idle, 1: active, 2: pressed
buttonText = "BACK TO MENU";

function onButtonRelease() {
	
}

function onButtonPushed() {
	global.wave = 0;
	room_goto(rMenu);
}