function PlayerStateFree()
{
	var _horMove = keyRight - keyLeft;
	var _verMove = keyDown - keyUp;

	var _keyPressed = (_horMove != 0 ) or (_verMove != 0);

	if (_keyPressed)
	{
		dir = point_direction(0,0,_horMove,_verMove);
		spd = lerp(spd, spdMax, .2);
		
		if (abs(hsp) > 0.3) or (abs(vsp) > 0.3) sprite_index = sPlayerWalk;
	}
	else
	{
		// Não estou me movendo
		spd = lerp(spd, 0, .3);
		
		if (abs(hsp) < 0.3) or (abs(vsp) < 0.3) sprite_index = sPlayerIdle;
	}
	hsp = lengthdir_x(spd, dir);
	vsp = lengthdir_y(spd, dir);	
}