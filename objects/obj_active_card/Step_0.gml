if (!first_contact)
{
	if( place_meeting(x,y,obj_ace) )
	{
		is_on = true;
	}
	else
	{
		is_on = false;
	}
}

if (collected)
{
	if (cooldown > 0)
	{
		cooldown--;
	}
}

curvePos += curveSpeed;

curvePos = curvePos mod 1;

var _curveStruct = animcurve_get(curveAsset);
var _channel = animcurve_get_channel(_curveStruct, "y");

var _value = animcurve_channel_evaluate(_channel, curvePos);

y = y + _value;

if (collected)
{
	persistent = true;
}
else persistent = false;
