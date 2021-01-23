/// @description After first initialization

Path = oSpawn.Path;

path_start(Path, (global.spd * enemySpeed) * global.gameSpeed, 0, 1);
hp = global.hp * enemyHealth;

startsize = sprite_width;
starthp = hp;

image_xscale = 1.2;
image_yscale = 1.2;
loaded = true;

path_speed = global.spd * enemySpeed * global.gameSpeed;