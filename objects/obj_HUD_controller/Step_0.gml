var one_key = keyboard_check_pressed(ord(1));
var two_key = keyboard_check_pressed(ord(2));
var three_key = keyboard_check_pressed(ord(3));
var four_key = keyboard_check_pressed(ord(4));
var five_key = keyboard_check_pressed(ord(5));

if (one_key)
{
	hotbar_offset = -95;
}
else if (two_key)
{
	hotbar_offset = -47.5;
}
else if (three_key)
{
	hotbar_offset = 0;
}
else if (four_key)
{
	hotbar_offset = 47.5;
}
else if (five_key)
{
	hotbar_offset = 95;
}