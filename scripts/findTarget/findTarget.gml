/// @function findTarget(targetGround, targetWater, targetSky, targetUnderground);
/// @param {integer} x the position to look from
/// @param {integer} y the position to look from
/// @param {bool} targetGround targets ground enemies
/// @param {bool} targetWater targets water enemies
/// @param {bool} targetSky targets sky enemies
/// @param {bool} targetUnderground targets underground enemies
function findTarget(_x, _y, targetGround, targetWater, targetSky, targetUnderground){
	//Add possible Targets to Array:
	var listSize = 0;
	possibleList[0] = noone;
	if(targetGround && instance_exists(par_EnemyGround)) {
		possibleList[listSize] = instance_nearest(_x,_y,par_EnemyGround);
		listSize += 1;
	}
	if(targetWater && instance_exists(par_EnemyWater)){
		possibleList[listSize] = instance_nearest(_x,_y,par_EnemyWater);
		listSize += 1;
	}
	if(targetSky && instance_exists(par_EnemySky)){
		possibleList[listSize] = instance_nearest(_x,_y,par_EnemySky);
		listSize += 1;
	}
	if(targetUnderground && instance_exists(par_EnemyUnderground)){
		possibleList[listSize] = instance_nearest(_x,_y,par_EnemyUnderground);
		listSize += 1;
	}
	
	
	//Calculate closest of possible
	eMin = noone; //Closest Enemy
	minDist = infinity;
	for(i = 0; i < array_length(possibleList); i++) {
		dist = distance_to_object(possibleList[i]);
        if (dist < minDist)
        {
            eMin = possibleList[i];
            minDist = dist;
        }
	}
	return eMin;
}