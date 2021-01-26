// Inherit the parent event
event_inherited();

cost = 50; // cost of tower
powerCost = 0; //energycost of tower
costPlace_start = 115;
costPlace_y = costPlace_start;
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