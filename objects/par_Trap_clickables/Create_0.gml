cost = 10; // cost of tower
powerCost = 1; //energycost of tower
costPlace_start = 115;
costPlace_y = costPlace_start;
draggableTrap = oTrapSlow_D;
placedTrap = oTrapSlow;

maxrange = 300;
minrange = 0;
fire_rate = room_speed / 1;
draggableObject = oTrapSlow_D;
clickableObjectType = oTrapSlow_C;
trapObject = oTrapSlow;
rspeed = 5; //Speed of the Rotation
bulletType = oBulletDouble;
maxPowerIncrease = 0;

//Info-Variables
infoName = "Slowing Trap";
infoRange = maxrange;
infoSpeed = fire_rate;
infoCost = clickableObjectType.cost;
infoEnergy = clickableObjectType.powerCost;
infoSell = infoCost / 2;
infoDescription[0] = "The standard tower";
infoDescription[1] = "Shoots standard Bullets";
infoShortText = "Standard Tower";


enoughMoney = false;
enoughEnergy = false;
hovering = false;