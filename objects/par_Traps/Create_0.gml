//clickableObjectType = oTowerDouble_C;
/// @description Initialize Variables
minrange = clickableObjectType.minrange;
maxrange = clickableObjectType.maxrange;
fire_rate = clickableObjectType.fire_rate;
draggableObject = clickableObjectType.draggableObject;
trapObject = clickableObjectType.trapObject;
rspeed = clickableObjectType.rspeed; //Speed of the Rotation
bulletType = clickableObjectType.bulletType;
maxPowerIncrease = clickableObjectType.maxPowerIncrease;

shooting = false;
objectToShoot = noone;

hovering = false;
tooltipActive = false;

effect_create_below(ef_explosion, x, y, 1.7, c_gray);
oAudioManager.playFX(sndImpactPlateHeavy);

move_snap(64, 64);

//Start Enemy-Waves if first trap is build
if (instance_exists(oSpawn)) {
	if (!oSpawn.spawnActive) {
		oSpawn.spawnActive = true;
	}
} else if (instance_exists(oSpawnEndless)) {
	if (!oSpawnEndless.spawnActive) {
		oSpawnEndless.spawnActive = true;
	}
}

alarm[1] = 2;


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