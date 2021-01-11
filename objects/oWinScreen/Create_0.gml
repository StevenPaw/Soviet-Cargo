isActive = false;

//nextLevelButton = instance_create_layer(x+(sprite_width / 2) - (oNextLevel.sprite_width / 2),y + 400,"WinFailScreenButton",oNextLevel);

nextLevelButton = instance_find(oNextLevel, 0);
retryButton = instance_find(oRetry, 0);
menuButton = instance_find(oToMenu, 0);

direction = 90;