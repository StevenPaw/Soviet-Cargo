/// @description Draw Debuginfo

draw_self();

//1 get old Settings
oldColor = draw_get_color();
oldhAlign = draw_get_halign();
oldvAlign = draw_get_valign();
oldFont = draw_get_font();

//2 set new Settings
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fInfoBox);
draw_text(tX + 91, tY + 28, towerName);

draw_set_font(fMenuSmall);
draw_text(tX + 60, tY + 80, towerRange);
draw_text(tX + 343, tY + 80, towerCost);
draw_text(tX + 491, tY + 80, towerSellCost);
draw_text(tX + 60, tY + 124, towerSpeed);
draw_text(tX + 343, tY + 124, towerEnergy);
draw_text(tX + 200, tY + 124, towerDamage);

draw_set_font(fInfoBox);
for(i = 0; i < array_length(towerDescription); i++){
	draw_text(tX + 24, tY + 170 + (i*35), towerDescription[i]);
}

//Show targetType Info
var tTSize = 0.4;
var yPos = 140;
var xPos = 500;
var spacer = 5;
switch(targetTypes) {
	default:
		draw_set_valign(fa_center);
		draw_text(tX + xPos, tY + yPos, "-");
		break;
	case 1:
		//Only Ground
		draw_sprite_ext(sGround,1,tX + xPos,tY + yPos,tTSize,tTSize,0,c_white,1);
		break;
	case 2:
		//Only Water
		draw_sprite_ext(sWater,1,tX + xPos,tY + yPos,tTSize,tTSize,0,c_white,1);
		break;
	case 4:
		//Only Sky
		draw_sprite_ext(sSky,1,tX + xPos,tY + yPos,tTSize,tTSize,0,c_white,1);
		break;
	case 3:
		//Ground and Water
		draw_sprite_ext(sGround,1,tX + xPos, tY + yPos,tTSize,tTSize,0,c_white,1);
		draw_sprite_ext(sWater,1,tX + xPos + spacer + 64*tTSize,tY + yPos,tTSize,tTSize,0,c_white,1);
		break;
	case 5:
		//Ground and Sky
		draw_sprite_ext(sGround,1,tX + xPos,tY + yPos,tTSize,tTSize,0,c_white,1);
		draw_sprite_ext(sSky,1,tX + xPos + spacer + 64*tTSize,tY + yPos,tTSize,tTSize,0,c_white,1);
		break;
	case 6:
		//Water and Sky
		draw_sprite_ext(sWater,1,tX + xPos, tY + yPos,tTSize,tTSize,0,c_white,1);
		draw_sprite_ext(sSky,1,tX + xPos + spacer + 64*tTSize,tY + yPos,tTSize,tTSize,0,c_white,1);
		break;
	case 7:
		//Ground, Water and Sky
		draw_sprite_ext(sGround, 1, tX + xPos, tY + yPos, tTSize,tTSize,0,c_white,1);
		draw_sprite_ext(sWater, 1, tX + xPos + spacer + 64*tTSize, tY + yPos, tTSize,tTSize,0,c_white,1);
		draw_sprite_ext(sSky, 1, tX + xPos + spacer * 2 + 128*tTSize, tY + yPos, tTSize,tTSize,0,c_white,1);
		break;
}

//3 regain old Settings
draw_set_color(oldColor);
draw_set_halign(oldhAlign);
draw_set_valign(oldvAlign);
draw_set_font(oldFont);
