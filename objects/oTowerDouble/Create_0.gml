/// @description Initialize Variables

// Inherit the parent event
event_inherited();

maxrange = 300;
minrange = 0;
fire_rate = room_speed / 1;
draggableObject = oTowerDouble_D;
clickableObjectType = oTowerDouble_C;
towerObject = oTowerDouble;
rspeed = 5; //Speed of the Rotation
bulletType = oBulletDouble;

//Info-Variables
infoName = "Double-Tower";
infoRange = maxrange;
infoSpeed = fire_rate;
infoCost = clickableObjectType.cost;
infoEnergy = clickableObjectType.powerCost;
infoSell = infoCost / 2;
infoDescription[0] = "The standard tower";
infoDescription[1] = "Shoots standard Bullets";