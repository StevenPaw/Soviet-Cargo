hp -= other.BulletDamage;
if(other.BulletSlow > 0) {
	enemySpeed = startSpeed * other.BulletSlow;
	isSlowed = true;
}
with(other) instance_destroy();

effect_create_below(ef_explosion, x, y, 0.05, enemyBloodColor);