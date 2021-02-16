
// initial enemy variables
startSpeed = 1;
enemySpeed = startSpeed; //is multiplied by the room speed!
isSlowed = false;
regainSpeed = 0.001; // regain speed after x amount of time when slowed
enemyHealth = 1; //is multiplied by the global hp
enemyDeathColor = c_orange; //The Color of the effect when dead
enemyBloodColor = c_orange; //The Color of the effect when hit
enemyCoins = 2; //The amount of coins you get for defeating one of this

type = "ground"; //Choose between ground, water, underground and sky

alarm[0] = 1;
loaded = false;
hp = 0;

starthp = hp;

function onDeath() {
	
}