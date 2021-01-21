/// @description Variable Initialization after first
//Find Price of Tower and lower coins by cost
clickable = instance_find(clickableObjectType,0);
cost = clickable.cost;
powerCost = clickable.powerCost;
if (global.isBuying) {
	global.coins -= cost;
	global.isBuying = false;
}
global.maxPoweruse += maxPowerIncrease;