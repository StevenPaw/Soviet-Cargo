//clickableObjectType = oTowerDouble_C;

/// @description Initialize Variables
minrange = clickableObjectType.minrange; //Sets the minimum range of the tower
maxrange = clickableObjectType.maxrange; //Sets the maximum range of the tower
fire_rate = clickableObjectType.fire_rate; //Sets the speed in which the tower is firing
draggableObject = clickableObjectType.draggableObject; //sets the draggable object for this tower
towerObject = clickableObjectType.towerObject; //Sets the towerObject based on the clickable object
rspeed = clickableObjectType.rspeed; //Speed of the Rotation
bulletType = clickableObjectType.bulletType; //sets the type of bullet the tower is using
maxPowerIncrease = clickableObjectType.maxPowerIncrease; //sets how much this tower increases the max power usage
aiSpeed = 1; //Set in code. Controls the speed of the random movements a tower does

shooting = false; //Defines if the tower is shooting or not
objectToShoot = noone; //Defines the object the tower is shooting

effect_create_below(ef_explosion, x, y, 1.7, c_gray); //create a small dust explosion below the tower when its build


tower_base = instance_create_layer(x, y, "Traps", obj_TowerBase); //create the base for the tower

move_snap(64, 64); //snap the tower on the grid (doublecheck after gridManager)

//Start Enemy-Waves if first tower is build
if (!oSpawn.spawnActive) {
    oSpawn.spawnActive = true;
}

//1: Ground. 2:Water. 4:Sky. Add together to allow mutliple target types.
//For example: 3 for Ground and Water, 6 for Water and Sky
targetGround = clickableObjectType.targetGround;
targetWater = clickableObjectType.targetWater;
targetSky = clickableObjectType.targetSky;
targetUnderground = clickableObjectType.targetUnderground;

alarm[1] = 2;
alarm[2] = 1;

//FOR ROTATION
objectToShoot_x = room_width; //Sets the x-Position of the Enemy to determine to shooting direction
objectToShoot_y = y + 1; //Sets the y-Position of the Enemy to determine to shooting direction

//Info-Variables
infoName = "ERROR";
infoRange = maxrange;
infoSpeed = fire_rate;
infoCost = clickableObjectType.cost;
infoEnergy = clickableObjectType.powerCost;
infoSell = infoCost / 2;
infoDescription[0] = "NO INFO HERE";
infoDescription[1] = "ABORT MISSION!";