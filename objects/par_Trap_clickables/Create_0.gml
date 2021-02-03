cost = 10; // cost of tower
powerCost = 0; //energycost of tower
costPlace_start = 115;
costPlace_y = costPlace_start;
draggableTrap = oTrapSlow_D;
placedTrap = oTrapSlow;

maxrange = 10;
minrange = 0;
fire_rate = 0;
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
infoDescription[0] = "The standard trap";
infoDescription[1] = "Traps Enemys with... something?";
infoShortText = "Standard Trap";


enoughMoney = false;
enoughEnergy = false;
hovering = false;