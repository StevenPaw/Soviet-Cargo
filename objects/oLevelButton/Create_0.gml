//State for the Button Image
state = 0; //0: idle, 1: active, 2: pressed

levelNumber = 0;
selectedLevel = rMenu;

function onButtonRelease() {
	oAudioManager.playButtonClick();
	room_goto(selectedLevel);
}

function onButtonPushed() {
	
}