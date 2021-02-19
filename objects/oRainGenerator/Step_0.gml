///generate rain
edge = 200;

repeat(20)
{
	instance_create_layer(-edge + random(room_width+edge*2), -edge + random(room_height+edge*2), "EnemiesSky", oRain);
}