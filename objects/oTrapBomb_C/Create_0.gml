// Inherit the parent event
event_inherited();

cost = 10; // cost of tower
powerCost = 0; //energycost of tower
draggableTrap = oTrapBomb_D;


maxrange = 384;
minrange = 0;
fire_rate = 0;
draggableObject = oTrapBomb_D;
clickableObjectType = oTrapBomb_C;
towerObject = oTrapBomb;
rspeed = 0; //Speed of the Rotation
bulletType = oBulletDouble;


//Info-Variables
infoName = "Bomb-Trap";
infoRange = maxrange;
infoSpeed = fire_rate;
infoCost = clickableObjectType.cost;
infoEnergy = clickableObjectType.powerCost;
infoSell = infoCost / 2;
infoDescription[0] = "Explodes on Contact";
infoDescription[1] = "with 1 use";
infoShortText = "Explodes on Contact";