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
}

if (instance_exists(oTrapTooltip)) {
    instance_destroy(instance_find(oTrapTooltip, 0));
}

if (available) {
    tooltip = instance_create_layer(x, y, "GUI1", oTrapTooltip);
    tooltip.towerName = infoName;
    tooltip.towerShortText = infoShortText;
    tooltip.enoughMoney = enoughMoney;
    tooltip.enoughEnergy = enoughEnergy;
}

hovering = true;