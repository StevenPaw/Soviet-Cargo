global.hp = 100; // initial enemy health
global.spd = 1; // initial enemy speed
global.wave = 0; //wave that runs in the moment

global.playerHP = global.maxPlayerHP; //actual player Health at the moment
global.coins = 30; // initial player currency
global.poweruse = 0; // initial enemy level

if(room = rMenu) {
	if(!audio_is_playing(sndMainTheme)) {
		oAudioManager.playMusic(sndMainTheme);
	}
}