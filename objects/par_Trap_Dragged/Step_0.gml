x = oGridManager.moveSnapped(mouse_x);
y = oGridManager.moveSnapped(mouse_y);

if(!place_meeting(x,y,oPath)) col = c_red;
else col = c_white;