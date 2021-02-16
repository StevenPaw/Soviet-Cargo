// Inherit the parent event
event_inherited();

cost = 50; // cost of tower
powerCost = 0; //energycost of tower
draggableTower = oTowerEnergy_D;


maxrange = 0;
minrange = 0;
draggableObject = oTowerEnergy_D;
clickableObjectType = oTowerEnergy_C;
towerObject = oTowerEnergy;
rspeed = 2; //Speed of the Rotation
maxPowerIncrease = 10;
bulletType = oBulletDouble;
fire_rate = 0;

//1: Ground. 2:Water. 4:Sky. Add together to allow mutliple target types.
//3: Ground and Water. 5: Ground and Sky. 6: Water and Sky. 7: everything
//targetTypes = 3;

targetGround = false;
targetWater = false;
targetSky = false;
targetUnderground = false;

//Info-Variables
infoName = "Energy-Tower";
infoRange = 0;
infoSpeed = 0;
infoCost = clickableObjectType.cost;
infoEnergy = clickableObjectType.powerCost;
infoSell = infoCost / 2;
infoDescription[0] = "This Tower gives more max Energy!";
infoDescription[1] = "And doesn't shoot";
infoShortText = "Increases Max Energy Use";
infoTargetTypes = targetGround * 1 + targetWater *2 + targetSky * 4 + targetUnderground * 8;