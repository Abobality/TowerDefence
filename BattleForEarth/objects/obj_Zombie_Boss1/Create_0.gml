healthPoints = 500
resistant = 5

image_xscale = -2;
image_yscale = 2;

move_towards_point(0,y,0.5)

takeDamage = function(damage)
{
	healthPoints = round(healthPoints - (damage / resistant));
}