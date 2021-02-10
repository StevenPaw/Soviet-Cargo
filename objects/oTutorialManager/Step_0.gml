if(tutorialProgress < tutorialLength){
image_index = tutorialProgress;
} else {
	tutorialFinished = true;
	global.gameSpeed = 1;
	
	instance_destroy();
}