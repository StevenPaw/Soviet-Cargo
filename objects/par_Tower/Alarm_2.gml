/// @description Decorative Movement
// random tower rotation in idle (for more realistic feel)
randomize();
aiSpeed = random_range(-1,1);
alarm[2] = 100 * aiSpeed;