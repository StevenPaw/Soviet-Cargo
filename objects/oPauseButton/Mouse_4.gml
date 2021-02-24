tutFinished = true;
if (!global.tutorialFinished) {
	tutFinished = false;
}
	
if(tutFinished) {
	image_index = 2;
	alarm[0] = 10;
	oAudioManager.playButtonClick();

	switch (global.gameSpeed) {
		default:
			global.gameSpeed = 0;
			break;
		case 0:
			global.gameSpeed = 1;
			break;
	}
}