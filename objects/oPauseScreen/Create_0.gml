isActive = false;

//nextLevelButton = instance_create_layer(x+(sprite_width / 2) - (oNextLevel.sprite_width / 2),y + 400,"WinFailScreenButton",oNextLevel);

resumeButton = instance_find(oResumeGame, 0);
restartButton = instance_find(oRestart, 0);
menuButton = instance_find(oToMenuPause, 0);

oldSpeed = 0;

direction = 90;