BulletHit = false;

if (other.type = type) {
	BulletHit = true;
} else {
	BulletHit = false;
}
	
if(BulletHit) {
	hp -= other.BulletDamage;
	if(other.BulletSlow < 1) {
		enemySpeed = startSpeed * other.BulletSlow;
		isSlowed = true;
	}
	if(other == oBulletBomb) {
		instance_create_layer(x, y, "GUI1", oExplosion);
	}
	with(other) instance_destroy();

	effect_create_below(ef_explosion, x, y, 0.05, enemyBloodColor);
	
	oAudioManager.playFX(sndImpactPlateMetal);
}