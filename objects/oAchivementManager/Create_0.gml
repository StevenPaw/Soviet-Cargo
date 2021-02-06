achievements = ds_list_create();
achGot[0] = false;
achImage[0] = ph_1_16x16;
achDescription[0] = "ERROR";
achCount = 0;

function AddAchievement(name, description, image){
	achCount += 1;
	ds_list_add(achievements, name);
	achGot[achCount] = false;
	achImage[achCount] = image;
	achDescription[achCount] = description;
}

AddAchievement("StartedGame", "You started the Game", ph_1_16x16);
AddAchievement("Level1", "You finished your first Level", ph_1_16x16);
AddAchievement("Level2", "You finished a level with 2 Stars", ph_1_16x16);