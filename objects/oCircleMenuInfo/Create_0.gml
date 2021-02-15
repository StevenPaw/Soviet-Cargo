active = false;
clickedTower = oTowerDouble;

nearest = instance_nearest(x,y,par_Tower);
moneyback = nearest.cost;
powerback = nearest.powerCost;

function onClick() {
	oAudioManager.playButtonClick();
	if(instance_exists(oInfoBox)) {
		infBox = instance_find(oInfoBox, 0);
		instance_destroy(infBox);
	}

	infoBox = instance_create_layer(room_width/2, room_height/2, "GUI1", oInfoBox);
	infoBox.towerName = nearest.clickableObjectType.infoName;
	infoBox.towerRange = nearest.clickableObjectType.infoRange;
	infoBox.towerSpeed = nearest.clickableObjectType.infoSpeed;
	infoBox.towerCost = nearest.clickableObjectType.infoCost;
	infoBox.towerEnergy = nearest.clickableObjectType.infoEnergy;
	infoBox.towerSellCost = nearest.clickableObjectType.infoSell;
	infoBox.towerDescription = nearest.clickableObjectType.infoDescription;
	infoBox.targetTypes = nearest.clickableObjectType.targetTypes;
	infoBox.towerDamage = nearest.clickableObjectType.infoDamage;
	
	//effect_create_above(ef_explosion, x, y, 1.7, c_gray);
}