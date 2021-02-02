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

if(enoughEnergy && enoughMoney)
{
	if (hovering) {
		image_index = 1;
	} else {
		image_index = 0;
	}
} else {
	image_index = 2;	
}