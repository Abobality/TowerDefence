maxHealth = 500

healthPoints = 500
resistant = 5
damaged = [];

array_push(global.currentWaveEnemies,id);

image_xscale = -2;
image_yscale = 2;

if path_exists(pth_level_1)
{
	path_start(pth_level_1,5,path_action_stop,true);
}

takeDamage = function(damage)
{
	healthPoints = round(healthPoints - (damage / resistant));
}