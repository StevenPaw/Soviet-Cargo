// Inherit the parent event
event_inherited();

cost = 20; // cost of tower
powerCost = 2; //energycost of tower
costPlace_start = 115;
costPlace_y = costPlace_start;
draggableTower = oTowerFreeze_D;


maxrange = 200;
fire_rate = room_speed / 0.5;
draggableObject = oTowerFreeze_D;
clickableObjectType = oTowerFreeze_C;
towerObject = oTowerFreeze;
rspeed = 5; //Speed of the Rotation
bulletType = oBulletFreeze;


//Info-Variables
infoName = "Freeze-Tower";
infoRange = maxrange;
infoSpeed = fire_rate;
infoCost = cost;
infoEnergy = powerCost;
infoSell = infoCost / 2;
infoDescription[0] = "A long range tower";
infoDescription[1] = "Slow but effective";
infoShortText = "Long Range Attack";