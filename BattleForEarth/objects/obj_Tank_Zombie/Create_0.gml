maxHealth = 1000 * global.Multiple
healthPoints = 1000 * global.Multiple
isVisible = true;
damaged = [];

array_push(global.currentWaveEnemies,id);

image_xscale = -1;
depth = -y;

if path_exists(global.path)
{
	path_start(global.path,5,path_action_stop,true);
}

takeDamage = function(damage)
{
	healthPoints = healthPoints - damage;
}