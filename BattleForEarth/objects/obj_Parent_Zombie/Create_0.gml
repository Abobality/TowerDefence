healthPoints = 100

array_push(global.currentWaveEnemies,id);

image_xscale = -1;
depth = -y;

if path_exists(pth_level_1)
{
	path_start(pth_level_1,10,path_action_stop,true);
}

takeDamage = function(damage)
{
	healthPoints = healthPoints - damage;
}