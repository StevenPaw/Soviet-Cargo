/// @description Initialize Variables
minrange = 0;
maxrange = 300;
fire_rate = room_speed / 1;
draggableObject = oTowerDouble_D;
clickableObjectType = oTowerDouble_C;
towerObject = oTowerDouble;
rspeed = 5; //Speed of the Rotation
bulletType = oBulletDouble;

shooting = false;
objectToShoot = noone;

effect_create_below(ef_explosion, x, y, 1.7, c_gray);

tower_base = instance_create_layer(x, y, "Enemies", obj_TowerBase);

move_snap(64, 64);

//Start Enemy-Waves if first tower is build
if(!oSpawn.spawnActive)
{
	oSpawn.spawnActive = true;
}

alarm[1] = 2;


//FOR ROTATION
objectToShoot_x = room_width; //Sets the x-Position of the Enemy to determine to shooting direction
objectToShoot_y = y + 1; //Sets the y-Position of the Enemy to determine to shooting direction

//Info-Variables
infoName = "ERROR";
infoRange = maxrange;
infoSpeed = fire_rate;
infoCost = clickableObjectType.cost;
infoEnergy = clickableObjectType.powerCost;
infoSell = infoCost / 2;
infoDescription[0] = "NO INFO HERE";
infoDescription[1] = "ABORT MISSION!";