// Inherit the parent event
event_inherited();

cost = 10; // cost of tower
powerCost = 0; //energycost of tower
draggableTrap = oTrapSlow_D;


maxrange = 128;
minrange = 0;
fire_rate = 0;
draggableObject = oTrapSlow_D;
clickableObjectType = oTrapSlow_C;
towerObject = oTrapSlow;
rspeed = 0; //Speed of the Rotation
bulletType = oBulletDouble;


//Info-Variables
infoName = "Slime-Trap";
infoRange = maxrange;
infoSpeed = fire_rate;
infoCost = clickableObjectType.cost;
infoEnergy = clickableObjectType.powerCost;
infoSell = infoCost / 2;
infoDescription[0] = "Slows down Enemies";
infoDescription[1] = "with 5 uses";
infoShortText = "Slows down Enemies";