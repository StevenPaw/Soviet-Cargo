currentWave = 0;
currentLevel = 0;

//List with Enemys for [<Wave>, <Enemy>]
enemies[0,0] = noone;

for (i = 0; i <= oLevelManager.levelCount; i++) {
	waveList[i] = ds_list_create();
}


alarm[1] = 1;