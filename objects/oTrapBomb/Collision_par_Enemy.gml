spawnedExplosion = instance_create_layer(x, y, "GUI1", oExplosion);
spawnedExplosion.explosionDamage = 30;
spawnedExplosion.explosionRange = 300;
uses -=1;

if (uses <= 0) {
	instance_destroy();
}