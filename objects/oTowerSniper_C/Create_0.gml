// Inherit the parent event
event_inherited();

cost = 20; // cost of tower
powerCost = 2; //energycost of tower
costPlace_y = costPlace_start;
draggableTower = oTowerSniper_D;

// tower "stats"
maxrange = 600;
minrange = 100;
fire_rate = room_speed / 0.4;
draggableObject = oTowerSniper_D;
clickableObjectType = oTowerSniper_C;
towerObject = oTowerSniper;
rspeed = 5; //Speed of the Rotation
bulletType = oBulletSniper;

targetGround = true;
targetWater = true;
targetSky = false;
targetUnderground = false;

//Info-Variables
infoName = "Sniper-Tower";
infoRange = maxrange;
infoSpeed = fire_rate;
infoCost = cost;
infoEnergy = powerCost;
infoSell = infoCost / 2;
infoDescription[0] = "A long range tower";
infoDescription[1] = "Slow but effective";
infoShortText = "Long Range Attack";
infoTargetTypes = targetGround * 1 + targetWater *2 + targetSky * 4 + targetUnderground * 8;