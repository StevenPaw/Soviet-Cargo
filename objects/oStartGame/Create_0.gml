//State for the Button Image
state = 0; //0: idle, 1: active, 2: pressed

direction = 90;
speed = 1;

function onButtonRelease() {
	room_goto(rLevel01);
	oAudioManager.playButtonClick();
}

function onButtonPushed() {
}