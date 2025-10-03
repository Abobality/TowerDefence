healthPoints = 500
resistant = 5

move_towards_point(0,y,0.5)

takeDamage = function(damage)
{
	healthPoints = healthPoints - (damage / resistant);
}