if(global.coins < cost)
{
	enoughMoney = false;	
} else {
	enoughMoney = true;
}

if(global.poweruse + powerCost > global.maxPoweruse)
{
	enoughEnergy = false;
} else {
	enoughEnergy = true;
}

available = true;
if(instance_exists(oTutorialManager)) {
	if (!global.tutorialFinished) {
		available = false;
	}
}
if (oPauseScreen.isActive) {
	available = false;
}

if(enoughEnergy && enoughMoney && available)
{
	if (hovering) {
		image_index = 1;
	} else {
		image_index = 0;
	}
} else {
	image_index = 2;	
}