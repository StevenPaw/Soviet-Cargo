x = oGridManager.moveSnapped(mouse_x);
y = oGridManager.moveSnapped(mouse_y);

if(!place_meeting(x,y,oPath) or place_meeting(x,y,par_Traps)) col = c_red;
else col = c_white;