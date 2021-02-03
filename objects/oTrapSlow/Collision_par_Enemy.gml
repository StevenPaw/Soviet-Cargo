if(!other.isSlowed) {
	other.enemySpeed -= other.startSpeed * 0.5;	
	other.isSlowed = true;
	uses -= 1;
	yScale = (1 / maxuses) * uses;
}

if (uses <= 0) {
	instance_destroy();
}