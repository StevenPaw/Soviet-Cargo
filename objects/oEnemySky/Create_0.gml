// Inherit the parent event
event_inherited();


// individual variables
startSpeed = 1.5; //is multiplied by the room speed!
enemyHealth = 10; //is multiplied by the global hp
enemyDeathColor = c_orange; //The Color of the effect when dead
enemyBloodColor = c_orange; //The Color of the effect when hit
enemyCoins = 2; //The amount of coins you get for defeating one of this

function onDeath() {
	//oStats.killedStandardEnemies += 1;
}