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
if (hovering) {
	if(instance_exists(oTowerTooltip)){
		instance_destroy(instance_find(oTowerTooltip, 0));
	}

	tooltip = instance_create_layer(x,y - sprite_height /2,"GUI1",oTowerTooltip);
	tooltip.towerName = clickableObjectType.infoName;
	tooltip.towerShortText = clickableObjectType.infoShortText;
	tooltip.enoughMoney = true;
	tooltip.enoughEnergy = true;
	
	tooltipActive = true;
}
}