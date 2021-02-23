/// @description Thunder

randomize();
randomCheck = random_range(0,100);
if(randomCheck >= 90) {
	tintColorBlack = 255;
	alarm[2] = thunderSoundDelay * random_range(0.5,2);
}

alarm[1] = thunderCheckTime;