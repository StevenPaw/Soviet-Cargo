//State for the Button Image
state = 0; //0: idle, 1: active, 2: pressed, 3: locked

levelNumber = 0;
selectedLevel = rMenu;

function onButtonRelease() {
	if (state != 3) {
		oAudioManager.playButtonClick();
		room_goto(selectedLevel);
	}
}

function onButtonPushed() {
	
}