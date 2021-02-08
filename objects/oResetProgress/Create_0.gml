//State for the Button Image
state = 0; //0: idle, 1: active, 2: pressed

buttonText = "RESET PROGRESS";

function onButtonRelease() {
	
}

function onButtonPushed() {
	instance_create_layer(room_width / 2, room_height / 2, "Achievements", oResetWarning);
}