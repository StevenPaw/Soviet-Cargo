sliderValue = 0;
achievementsGot = 0;
achievementsTotal = 0;

function calculateProgress() {
	for (i = 1; i <= array_length(oAchievementSelectManager.Achievementlist); i++)
	{
		if(!oAchievementManager.achHidden[i]) {
			achievementsTotal += 1;
			if(oAchievementManager.achGot[i]) {
				achievementsGot += 1;
			}
		}
	}
	
	sliderBar = instance_create_layer(x,y,"Achievements", oProgressBar);
	sliderBar.image_xscale = (image_xscale / achievementsTotal) * achievementsGot;
	sliderValue = (100 / achievementsTotal) * achievementsGot;
}

calculateProgress();