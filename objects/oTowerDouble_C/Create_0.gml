// Inherit the parent event
event_inherited();

cost = 15; // cost of tower
powerCost = 1; //energycost of tower
draggableTower = oTowerDouble_D;


maxrange = 300;
minrange = 0;
fire_rate = room_speed / 1;
draggableObject = oTowerDouble_D;
clickableObjectType = oTowerDouble_C;
towerObject = oTowerDouble;
rspeed = 5; //Speed of the Rotation
bulletType = oBulletDouble;

//1: Ground. 2:Water. 4:Sky. Add together to allow mutliple target types.
//For example: 3 for Ground and Water, 6 for Water and Sky
targetTypes = 7;  

//Info-Variables
infoName = "Double-Tower";
infoRange = maxrange;
infoSpeed = fire_rate;
infoCost = clickableObjectType.cost;
infoEnergy = clickableObjectType.powerCost;
infoSell = infoCost / 2;
infoDescription[0] = "The standard tower";
infoDescription[1] = "Shoots standard Bullets";
infoShortText = "Standard Tower";