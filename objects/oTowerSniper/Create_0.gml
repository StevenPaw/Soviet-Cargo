/// @description Initialize Variables

// Inherit the parent event
event_inherited();

maxrange = 450;
minrange = 100;
fire_rate = room_speed / 0.5;
draggableObject = oTowerSniper_D;
clickableObjectType = oTowerSniper_C;
towerObject = oTowerSniper;
rspeed = 5; //Speed of the Rotation
bulletType = oBulletSniper;

//Info-Variables
infoName = "Sniper-Tower";
infoRange = maxrange;
infoSpeed = fire_rate;
infoCost = clickableObjectType.cost;
infoEnergy = clickableObjectType.powerCost;
infoSell = infoCost / 2;
infoDescription[0] = "A long range tower";
infoDescription[1] = "Slow but effective";