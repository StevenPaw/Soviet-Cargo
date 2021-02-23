// Inherit the parent event
event_inherited();

cost = 20; // cost of tower
powerCost = 1; //energycost of tower
draggableTower = oTowerBomb_D;

// tower "stats"
maxrange = 300;
minrange = 0;
fire_rate = room_speed / 0.3;
draggableObject = oTowerBomb_D;
clickableObjectType = oTowerBomb_C;
towerObject = oTowerBomb;
rspeed = 5; //Speed of the Rotation
bulletType = oBulletBomb;

targetGround = true;
targetWater = true;
targetSky = false;
targetUnderground = false;

//Info-Variables
infoName = "Bomb-Tower";
infoRange = maxrange;
infoSpeed = fire_rate;
infoCost = clickableObjectType.cost;
infoEnergy = clickableObjectType.powerCost;
infoSell = infoCost / 2;
infoDescription[0] = "Bombing tower";
infoDescription[1] = "Shoots exploding bullets";
infoShortText = "Shoots exploding bullets";
infoTargetTypes = targetGround * 1 + targetWater *2 + targetSky * 4 + targetUnderground * 8;