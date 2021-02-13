towerName = "ERROR";
towerRange = 0;
towerSpeed = 0;
towerCost = 0;
towerEnergy = 0;
towerSellCost = 0;
towerDamage = 0;
targetTypes = 0;
towerDescription = "I have no idea what this does...";

closeButton = instance_create_layer(x + sprite_width /2, y - sprite_height/2, "GUI1", oCloseButton);
closeButton.bindedWindow = self;

tX = x - sprite_width / 2;
tY = y - sprite_height / 2;