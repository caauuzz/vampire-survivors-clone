alarm[0] = global.spawnDelay;
alarm[1] = global.spawnEnemyChangeDelay;

side = -1;
enemyIndex = 0;

enemyList = ds_list_create();
ds_list_add(enemyList, oEnemyA);
ds_list_add(enemyList, oEnemyB);