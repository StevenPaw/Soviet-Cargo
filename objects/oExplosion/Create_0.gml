// invididual tower variables
explosionDamage = 15;

size = 2;
lifetime = 50;
progress = 0;
explosionRange = 200;
delay = 10;
image_speed = image_number / lifetime;
image_yscale = size;
image_xscale = size;
randomize();
image_angle = random_range(0,360);
alarm[0] = delay;