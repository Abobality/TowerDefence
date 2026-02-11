healthPoints = 300
isVisible = true;
maxHealth = 300

array_push(global.currentWaveEnemies,id);

image_xscale = -2;
image_yscale = 2;

if path_exists(global.path)
{
	path_start(global.path,8,path_action_stop,true);
}

takeDamage = function(damage)
{
	healthPoints = round(healthPoints - damage);
}