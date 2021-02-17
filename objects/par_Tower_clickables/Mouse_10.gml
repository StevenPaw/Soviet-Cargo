if(global.coins >= cost && global.poweruse + powerCost <= global.maxPoweruse)
{
	image_index = 1;
	costPlace_y = costPlace_start - 10;
}

if(instance_exists(oTowerTooltip)){
	instance_destroy(instance_find(oTowerTooltip, 0));
}

if(image_index = 1) {
	tooltip = instance_create_layer(x,y + 10,"GUI1",oTowerTooltip);
} else {
	tooltip = instance_create_layer(x,y + 20,"GUI1",oTowerTooltip);
}
tooltip.towerName = infoName;
tooltip.towerShortText = infoShortText;
tooltip.enoughMoney = enoughMoney;
tooltip.enoughEnergy = enoughEnergy;
tooltip.targetGround = targetGround;
tooltip.targetWater = targetWater;
tooltip.targetSky = targetSky;
tooltip.targetUnderground = targetUnderground;

hovering = true;