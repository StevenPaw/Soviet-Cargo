/// @description All Wave Functions

// Get current Wave
function getCurrentWave() {
	return currentWave;
}


// Starts next Wave
function nextWave() {
	if (currentWave < ds_list_size(wavelist[currentLevel])) {
		currentWave += 1;
		return true;
	} else {
		return false;
	}
}


//Load Waves
function loadWaves() {
	
	lvl = oLevelManager.getCurrentLevelID(room);
	
	for(o = 0; o < ds_list_size(waveList[lvl]); o++){
		inputString = ds_list_find_value(waveList[lvl], o);
		
		temp_str = "";
		
		enemyNumber = 0;
		
		for (var j = 0; j <= string_length(inputString); j++) {
			temp_str += string_char_at(inputString, j);
			if (string_char_at(inputString, j+1) == ";") {
				
				//Switches between the different Enemy Types when different numbers are in definition
				switch(temp_str){
					default:
						enemies[o,enemyNumber] = oEnemy;
						break;
					case "1": 
						enemies[o,enemyNumber] = oEnemyShield;
						break;
					case "2": 
						enemies[o,enemyNumber] = oEnemySpeed;
						break;
					case "3": 
						enemies[o,enemyNumber] = oEnemySky;
						break;
					case "4": 
						enemies[o,enemyNumber] = oEnemyWater;
						break;
				}
				enemyNumber += 1;
				temp_str = "";
				j++
			}
		}
	}
}

function getEnemy(wave,enemyNumber) {
	return enemies[wave,enemyNumber];
}

function getWaveSize(wave) {
	return array_length_2d(enemies, wave);
}

function getWaveCount() {
	lvl = oLevelManager.getCurrentLevelID(room);
	return ds_list_size(waveList[lvl]);
}