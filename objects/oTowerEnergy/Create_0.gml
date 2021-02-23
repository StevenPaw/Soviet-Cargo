/// @description Initialize Variables

clickableObjectType = oTowerEnergy_C;

if(instance_number(oTowerEnergy) >= 5) {
	oAchievementManager.giveAchievement("Too much energy");
}

// Inherit the parent event
event_inherited();