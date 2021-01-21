/// @description Initialize Variables

draggableObject = oTowerEnergy_D;
towerObject = oTowerEnergy;
rspeed = 3; //Speed of the Rotation
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