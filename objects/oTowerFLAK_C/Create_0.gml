// Inherit the parent event
event_inherited();

cost = 12; // cost of tower
powerCost = 1; //energycost of tower
draggableTower = oTowerFLAK_D;

// tower "stats"
maxrange = 400;
minrange = 0;
fire_rate = room_speed / 0.8;
draggableObject = oTowerFLAK_D;
clickableObjectType = oTowerFLAK_C;
towerObject = oTowerFLAK;
rspeed = 5; //Speed of the Rotation
bulletType = oBulletFLAK;

targetGround = false;
targetWater = false;
targetSky = true;
targetUnderground = false;

//Info-Variables
infoName = "FLAK-Tower";
infoRange = maxrange;
infoSpeed = fire_rate;
infoCost = clickableObjectType.cost;
infoEnergy = clickableObjectType.powerCost;
infoSell = infoCost / 2;
infoDescription[0] = "Destroys flying enemies";
infoDescription[1] = "Shoots only in the sky";
infoShortText = "Shoots flying enemies";
infoTargetTypes = targetGround * 1 + targetWater *2 + targetSky * 4 + targetUnderground * 8;