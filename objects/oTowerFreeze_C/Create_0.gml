// Inherit the parent event
event_inherited();

cost = 25; // cost of tower
powerCost = 2; //energycost of tower
draggableTower = oTowerFreeze_D;


maxrange = 200;
fire_rate = room_speed / 1;
draggableObject = oTowerFreeze_D;
clickableObjectType = oTowerFreeze_C;
towerObject = oTowerFreeze;
rspeed = 5; //Speed of the Rotation
bulletType = oBulletFreeze;

//1: Ground. 2:Water. 4:Sky. Add together to allow mutliple target types.
//3: Ground and Water. 5: Ground and Sky. 6: Water and Sky. 7: everything
targetTypes = 1;  

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
infoTargetTypes = targetTypes;