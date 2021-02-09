/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

// Inherit the parent event
event_inherited();

// individual variables
startSpeed = 4;
enemySpeed = 1; //is multiplied by the room speed!
enemyHealth = 0.5; //is multiplied by the global hp
enemyDeathColor = c_orange; //The Color of the effect when dead
enemyBloodColor = c_orange; //The Color of the effect when hit
enemyCoins = 5; //The amount of coins you get for defeating one of this

function onDeath() {
	oStats.killedSpeedEnemies += 1;
}