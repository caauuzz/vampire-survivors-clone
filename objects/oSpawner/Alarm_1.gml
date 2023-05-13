if (enemyIndex < ds_list_size(enemyList)-1)
{
	enemyIndex++;
	show_message("Trocando o tipo de inimigo");
}
else
{
	enemyIndex = 0;
}

alarm[1] = global.spawnEnemyChangeDelay;
