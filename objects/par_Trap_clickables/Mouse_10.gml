if(global.coins >= cost && global.poweruse + powerCost <= global.maxPoweruse)
{
	image_index = 1;
}

if(instance_exists(oTrapTooltip)){
	instance_destroy(instance_find(oTrapTooltip, 0));
}

tooltip = instance_create_layer(x,y,"GUI1",oTrapTooltip);
tooltip.towerName = infoName;
tooltip.towerShortText = infoShortText;
tooltip.enoughMoney = enoughMoney;
tooltip.enoughEnergy = enoughEnergy;

hovering = true;