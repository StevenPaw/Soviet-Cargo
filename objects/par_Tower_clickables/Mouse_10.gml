available = true;
if (instance_exists(oTutorialManager)) {
    if (!global.tutorialFinished) {
        available = false;
    }
}
if (oPauseScreen.isActive || oWinScreen.isActive || oFailScreen.isActive) {
    available = false;
}

if (global.coins >= cost && global.poweruse + powerCost <= global.maxPoweruse && available) {
    image_index = 1;
    costPlace_y = costPlace_start - 10;
}

if (instance_exists(oTowerTooltip)) {
    instance_destroy(instance_find(oTowerTooltip, 0));
}

if (image_index = 1 && available) {
    tooltip = instance_create_layer(x, y + 10, "GUI1", oTowerTooltip);
} else if (available) {
    tooltip = instance_create_layer(x, y + 20, "GUI1", oTowerTooltip);
}
if (instance_exists(oTowerTooltip)) {
    tooltip.towerName = infoName;
    tooltip.towerShortText = infoShortText;
    tooltip.enoughMoney = enoughMoney;
    tooltip.enoughEnergy = enoughEnergy;
    tooltip.targetGround = targetGround;
    tooltip.targetWater = targetWater;
    tooltip.targetSky = targetSky;
    tooltip.targetUnderground = targetUnderground;
}

hovering = true;