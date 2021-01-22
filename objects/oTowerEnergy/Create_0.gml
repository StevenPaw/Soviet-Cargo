/// @description Initialize Variables

draggableObject = oTowerEnergy_D;
towerObject = oTowerEnergy;
rspeed = 2; //Speed of the Rotation
maxPowerIncrease = 10;
clickableObjectType = oTowerEnergy_C;

effect_create_below(ef_explosion, x, y, 1.7, c_gray);

tower_base = instance_create_layer(x, y, "Enemies", obj_TowerBase);

move_snap(64, 64);

//Start Enemy-Waves if first tower is build
if(!oSpawn.spawnActive)
{
	oSpawn.spawnActive = true;
}

alarm[1] = 2;

//Info-Variables
infoName = "Energy-Tower";
infoRange = 0;
infoSpeed = 0;
infoCost = clickableObjectType.cost;
infoEnergy = clickableObjectType.powerCost;
infoSell = infoCost / 2;
infoDescription[0] = "This Tower gives more max Energy!";
infoDescription[1] = "And doesn't shoot";