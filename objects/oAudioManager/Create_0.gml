FXVol = global.effectsVolume; //Loudness for Effects
MSVol = global.musicVolume; //Loudness for Music
JGVol = global.musicVolume; //Loudness for Jingles

//Load Audio Groups at initialization
audio_group_load(agMusic);
audio_group_load(agEffects);
audio_group_load(agJingles);

//Stop all Audio playing
function stopAllDirect() {
	audio_stop_all();
}

//Update Effect Volume
function updateFXVolume(newVolume) {
	FXVol = newVolume;
	audio_group_set_gain(agEffects, FXVol * 0.8, 0);
}

//Update Music Volume
function updateMSVolume(newVolume) {
	MSVol = newVolume;
	audio_group_set_gain(agMusic, MSVol * 0.9, 0);
}

//Update Jingle Volume
function updateJGVolume(newVolume) {
	JGVol = newVolume;
	audio_group_set_gain(agJingles, JGVol * 1, 0);
}

//Play Effect Sound
function playFX(sound) {
	audio_play_sound(sound,1,false);
}

//Play Music
function playMusic(music) {
	stopAllDirect();
	audio_play_sound(music,5,true);
}

//Play Jingle
function playJingle(jingle) {
	audio_play_sound(jingle,5,true);
}