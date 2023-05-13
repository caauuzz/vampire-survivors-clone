side = irandom(1);

var _x, _y, _border = 16;

switch (side)
{
	case 0: 
		_x = random_range(global.cameraX, global.cameraX + global.cameraWidth);
		_y = choose(global.cameraY - _border, global.cameraY + global.cameraHeight + _border);
	break;
	
	case 1:
		_x = choose(global.cameraX - _border, global.cameraX + global.cameraWidth + _border);
		_y = random_range(global.cameraY, global.cameraY + global.cameraHeight);
	break;
}

instance_create_layer(_x, _y, "Entities", enemyList[| enemyIndex]);

alarm[0] = global.spawnDelay;