//State for the Button Image
state = 0; //0: idle, 1: active, 2: pressed

direction = 180;
speed = 5;

function onButtonRelease() {
	room_goto(rMenu);
}

function onButtonPushed() {
	
}