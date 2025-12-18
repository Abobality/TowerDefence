if healthPoints <=0
{
		instance_destroy(self)
		array_delete(global.currentWaveEnemies,0,1)
		global.enemyOnWave--;
		global.cash += maxHealth;
}

depth = -y;