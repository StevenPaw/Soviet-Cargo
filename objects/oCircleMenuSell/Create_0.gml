active = false;
clickedTower = oTower1;

nearest = instance_nearest(x,y,oTowerParent);
moneyback = nearest.cost;
powerback = nearest.powerCost;

function onClick() {
	instance_destroy(nearest);
	
	global.poweruse -= powerback;
	global.coins += moneyback / 2;
	effect_create_above(ef_star, x,y,20,c_white);
	effect_create_above(ef_spark, x,y,100,c_red);
	
	/*if place_meeting(x,y, clickedTower)
	{
		with (clickedTower)
		{
			instance_destroy();
		} 
    instance_destroy();
	}*/
}