maxHealth = 60 * global.Multiple;
isVisible = true;
healthPoints = 60 * global.Multiple
damaged = []

array_push(global.currentWaveEnemies,id);

image_speed = 2

image_xscale = -1;
depth = -y;


if path_exists(global.path)
{
	path_start(global.path,20,path_action_stop,true);
}

takeDamage = function(damage)
{
	healthPoints = healthPoints - damage;
}