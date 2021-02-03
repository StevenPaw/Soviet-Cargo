// Inherit the parent event
event_inherited();

cost = 20; // cost of tower
costPlace_y = costPlace_start;
draggableTower = oTowerSniper_D;


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
infoCost = cost;
infoEnergy = powerCost;
infoSell = infoCost / 2;
infoDescription[0] = "A long range tower";
infoDescription[1] = "Slow but effective";
infoShortText = "Long Range Attack";