// Inherit the parent event
event_inherited();

cost = 15; // cost of tower
powerCost = 1; //energycost of tower
draggableTower = oTowerDouble_D;

// tower "stats"
maxrange = 300;
minrange = 0;
fire_rate = room_speed / 0.8;
draggableObject = oTowerDouble_D;
clickableObjectType = oTowerDouble_C;
towerObject = oTowerDouble;
rspeed = 5; //Speed of the Rotation
bulletType = oBulletDouble;

targetGround = true;
targetWater = true;
targetSky = false;
targetUnderground = false;

//Info-Variables
infoName = "Double-Tower";
infoRange = maxrange;
infoSpeed = fire_rate;
infoCost = clickableObjectType.cost;
infoEnergy = clickableObjectType.powerCost;
infoSell = infoCost / 2;
infoDescription[0] = "The standard tower";
infoDescription[1] = "Shoots standard Bullets";
infoShortText = "Standard Tower";
infoTargetTypes = targetGround * 1 + targetWater *2 + targetSky * 4 + targetUnderground * 8;