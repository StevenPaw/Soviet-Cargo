cost = 10; // cost of tower
powerCost = 1; //energycost of tower
costPlace_start = 45;
costPlace_y = costPlace_start;
draggableTower = oTowerDouble_D;
placedTower = oTowerDouble;

// initial tower "stats"
maxrange = 300;
minrange = 0;
fire_rate = room_speed / 1;
draggableObject = oTowerDouble_D;
clickableObjectType = oTowerDouble_C;
towerObject = oTowerDouble;
rspeed = 5; //Speed of the Rotation
bulletType = oBulletDouble;
maxPowerIncrease = 0;

//targetTypes:
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
infoTargetTypes = targetGround * 1 + targetWater * 2 + targetSky * 4 + targetUnderground * 8;

instance_create_depth(x, y, 0, bulletType);
infoDamage = bulletType.BulletDamage;
instance_destroy(bulletType);

available = true;

enoughMoney = false;
enoughEnergy = false;
hovering = false;