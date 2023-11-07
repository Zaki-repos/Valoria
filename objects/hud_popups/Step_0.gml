//IMPT detects if there is text in the way
if (place_meeting(x, y+16, hud_popups))
{
	var above_text = instance_nearest(x, y, hud_popups)
	
	above_text.y_pos += 15;
	above_text.y -= 16;
}

//sets the timer and displays text
if (!displayText)
{
	displayTimer = displayHoldFrame;
	displayText = true;
}

//destroys the popup
if (displayTimer <= 0)
{
	instance_destroy();
}