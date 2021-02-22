available = true;
if(instance_exists(oTutorialManager)) {
	if (!global.tutorialFinished) {
		available = false;
	}
}
if (oPauseScreen.isActive || oWinScreen.isActive || oFailScreen.isActive) {
	available = false;
}
	
if(available) {
	if(instance_exists(oCircleMenuHolder)) {
		infBox = instance_find(oCircleMenuHolder, 0);
		instance_destroy(infBox);
	} 

	circleMenu = instance_create_depth(x,y,-99,oCircleMenuHolder);
	circleMenu.clickedTower = self.id;
}