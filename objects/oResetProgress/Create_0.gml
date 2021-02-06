//State for the Button Image
state = 0; //0: idle, 1: active, 2: pressed

buttonText = "! RESET PROGRESS !";

function onButtonRelease() {
	
}

function onButtonPushed() {
	oSaveLoadManager.resetSaves();
}