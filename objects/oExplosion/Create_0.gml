// invididual tower variables
explosionDamage = 80;


size = 5;
lifetime = 50;
progress = 0;
explosionRange = 200;
delay = 10;
image_speed = image_number / lifetime;
image_yscale = size;
image_xscale = size;
randomize();
image_angle = random_range(0,360);
effect_create_below(ef_flare, x, y, explosionRange * 200, c_black);
effect_create_below(ef_spark, x, y, explosionRange * 200, c_red);
effect_create_below(ef_explosion, x, y, explosionRange * 200, c_black);
alarm[0] = delay;