maxHealth = 100
healthPoints = 100
isVisible = true;
damaged = [];

array_push(global.currentWaveEnemies,id);

image_xscale = -1;
depth = -y;

if path_exists(global.path)
{
	path_start(global.path,10,path_action_stop,true);
}

takeDamage = function(damage)
{
	healthPoints = healthPoints - damage;
}