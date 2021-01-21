active = false;
clickedTower = oTowerDouble;

nearest = instance_nearest(x,y,par_Tower);
moneyback = nearest.cost;
powerback = nearest.powerCost;

function onClick() {
	effect_create_above(ef_explosion, x, y, 1.7, c_gray);
}