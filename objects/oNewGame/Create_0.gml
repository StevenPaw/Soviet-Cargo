//State for the Button Image
state = 0; //0: idle, 1: active, 2: pressed

buttonText = "NEW GAME";

function onButtonRelease() {
	
}

function onButtonPushed() {
	room_goto(rProlog);
}