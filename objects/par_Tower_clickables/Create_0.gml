cost = 10; // cost of tower
powerCost = 1; //energycost of tower
costPlace_start = 45;
costPlace_y = costPlace_start;
draggableTower = oTowerDouble_D;
placedTower = oTowerDouble;

maxrange = 300;
minrange = 0;
fire_rate = room_speed / 1;
draggableObject = oTowerDouble_D;
clickableObjectType = oTowerDouble_C;
towerObject = oTowerDouble;
rspeed = 5; //Speed of the Rotation
bulletType = oBulletDouble;
maxPowerIncrease = 0;

//1: Ground. 2:Water. 4:Sky. 8: Underground. Add together to allow mutliple target types.
//3: Ground and Water.	5: Ground and Sky.				6: Water and Sky.			7: Ground, Water, Sky. 

//8: Underground.		9: Underground, Ground.			10: Underground, Water.		11: Underground, Water, Ground.
//12: Underground, Sky.	13: Underground, Sky, Ground.	14: Underground, Sky, Water. 
//15: Underground, Sky, Water, Ground

//targetTypes = 7;

targetGround = false;
targetWater = false;
targetSky = false;
targetUnderground = false;

//Info-Variables
infoName = "Double-Tower";
infoRange = maxrange;
infoSpeed = fire_rate;
infoCost = cost;
infoEnergy = powerCost;
infoSell = infoCost / 2;
infoDescription[0] = "The standard tower";
infoDescription[1] = "Shoots standard Bullets";
infoShortText = "Standard Tower";
infoTargetTypes = targetGround * 1 + targetWater *2 + targetSky * 4 + targetUnderground * 8;

instance_create_depth(x,y,0,bulletType);
infoDamage = bulletType.BulletDamage;
instance_destroy(bulletType);

available = true;

enoughMoney = false;
enoughEnergy = false;
hovering = false;