// Inherit the parent event
event_inherited();

cost = 20; // cost of tower
powerCost = 2; //energycost of tower
costPlace_y = costPlace_start;
draggableTower = oTowerSniper_D;


maxrange = 500;
minrange = 100;
fire_rate = room_speed / 0.3;
draggableObject = oTowerSniper_D;
clickableObjectType = oTowerSniper_C;
towerObject = oTowerSniper;
rspeed = 5; //Speed of the Rotation
bulletType = oBulletSniper;

//1: Ground. 2:Water. 4:Sky. Add together to allow mutliple target types.
//3: Ground and Water. 5: Ground and Sky. 6: Water and Sky. 7: everything
targetTypes = 3;  

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
infoTargetTypes = targetTypes;