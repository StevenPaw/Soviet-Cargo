active = false;
clickedTower = oTowerDouble;

nearest = instance_nearest(x,y,par_Tower);
moneyback = nearest.cost;
powerback = nearest.powerCost;

function onClick() {
	if(instance_exists(oInfoBox)) {
		infBox = instance_find(oInfoBox, 0);
		instance_destroy(infBox);
	}

	infoBox = instance_create_layer(room_width/2, room_height/2, "GUI1", oInfoBox);
	infoBox.towerName = nearest.infoName;
	infoBox.towerRange = nearest.infoRange;
	infoBox.towerSpeed = nearest.infoSpeed;
	infoBox.towerCost = nearest.infoCost;
	infoBox.towerEnergy = nearest.infoEnergy;
	infoBox.towerSellCost = nearest.infoSell;
	infoBox.towerDescription = nearest.infoDescription;
	
	//effect_create_above(ef_explosion, x, y, 1.7, c_gray);
}