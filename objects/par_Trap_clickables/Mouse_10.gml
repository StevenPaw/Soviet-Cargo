if(global.coins >= cost && global.poweruse + powerCost <= global.maxPoweruse)
{
	image_index = 1;
	costPlace_y = costPlace_start - 10;
}

if(instance_exists(oTowerTooltip)){
	instance_destroy(instance_find(oTowerTooltip, 0));
}

tooltip = instance_create_layer(x + sprite_width / 2,y,"GUI1",oTowerTooltip);
tooltip.towerName = infoName;
tooltip.towerShortText = infoShortText;
tooltip.enoughMoney = enoughMoney;
tooltip.enoughEnergy = enoughEnergy;

hovering = true;