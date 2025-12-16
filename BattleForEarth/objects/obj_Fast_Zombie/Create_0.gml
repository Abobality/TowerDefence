healthPoints = 60

array_push(global.currentWaveEnemies,id);

image_speed = 2

image_xscale = -1;
depth = -y;

if path_exists(pth_level_1)
{
	path_start(pth_level_1,20,path_action_stop,true);
}

takeDamage = function(damage)
{
	healthPoints = healthPoints - damage;
}