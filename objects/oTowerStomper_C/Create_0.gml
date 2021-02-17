// Inherit the parent event
event_inherited();

cost = 50; // cost of tower
powerCost = 0; //energycost of tower
draggableTower = oTowerStomper_D;


maxrange = 200;
minrange = 0;
draggableObject = oTowerStomper_D;
clickableObjectType = oTowerStomper_C;
towerObject = oTowerStomper;
rspeed = 2; //Speed of the Rotation
maxPowerIncrease = 10;
bulletType = oBulletDouble;
fire_rate = room_speed / 1;

//1: Ground. 2:Water. 4:Sky. Add together to allow mutliple target types.
//3: Ground and Water. 5: Ground and Sky. 6: Water and Sky. 7: everything
//targetTypes = 3;

targetGround = false;
targetWater = false;
targetSky = false;
targetUnderground = true;

//Info-Variables
infoName = "Stomper-Tower";
infoRange = maxrange;
infoSpeed = fire_rate;
infoCost = clickableObjectType.cost;
infoEnergy = clickableObjectType.powerCost;
infoSell = infoCost / 2;
infoDescription[0] = "This Tower hits underground!";
infoDescription[1] = "And doesn't shoot";
infoShortText = "Hits underground";
infoTargetTypes = targetGround * 1 + targetWater *2 + targetSky * 4 + targetUnderground * 8;