/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
scale = image_xscale;
buttonText = "HARD";

state = 0; //0: idle, 1: active, 2: pressed

function onButtonRelease() {
	
}

function onButtonPushed() {
	oAudioManager.playButtonClick();
	room_goto(rEndlessLevelHard);
}