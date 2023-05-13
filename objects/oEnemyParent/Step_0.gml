// Inherit the parent event
event_inherited();

var _border = 32;

if (y < global.cameraY - _border)
{
	y = global.cameraY + global.cameraHeight + _border;
}

if (y > global.cameraY + global.cameraHeight + _border)
{
	y = global.cameraY - _border;
}

if (x < global.cameraX - _border)
{
	x = global.cameraX + global.cameraWidth + _border;
}

if (x > global.cameraX + global.cameraWidth + _border)
{
	x = global.cameraX - _border;
}