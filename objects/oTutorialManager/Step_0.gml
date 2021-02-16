if(tutorialProgress < tutorialLength && !global.tutorialFinished){
image_index = tutorialProgress;
} else {
	global.tutorialFinished = true;
	global.gameSpeed = 1;
	
	instance_destroy();
}