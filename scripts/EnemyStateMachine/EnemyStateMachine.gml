function EnemyStateIdle()
{
	hsp = 0;
	vsp = 0;
	
	if (instance_exists(oPlayer) && !global.playerIsDead)
	{
		SwitchState(EnemyStateFollow, true);
	}
	
	//show_debug_message("Enemy: IDLE STATE");
}

function EnemyStateFollow()
{
	dir = point_direction(x, y, oPlayer.x, oPlayer.y);
	
	hsp = lengthdir_x(spd, dir);
	vsp = lengthdir_y(spd, dir);
	
	if (!instance_exists(oPlayer) or global.playerIsDead)
	{
		SwitchState(EnemyStateIdle, true);
	}
	
	//show_debug_message("Enemy: FOLLOW STATE");
}