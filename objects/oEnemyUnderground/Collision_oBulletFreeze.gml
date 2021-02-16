enemySpeed = 0.5;
hp -= other.BulletDamage;
with(other) instance_destroy();

effect_create_below(ef_explosion, x, y, 0.05, enemyBloodColor);

image_xscale = hp / starthp + 0.2;
image_yscale = hp / starthp + 0.2;