// lose hp when enemy crosses the border

global.playerHP -= 1;

if(global.playerHP <= 0){
	if(!oWinScreen.isActive) {
		oFailScreen.isActive = true;
		oAudioManager.playJingle(sndLose);
	}
}

instance_destroy(other);