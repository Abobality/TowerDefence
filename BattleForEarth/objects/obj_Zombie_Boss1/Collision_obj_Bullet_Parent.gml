other.bulletPersistent = 0

if !array_contains(damaged,other.id)
{
	image_blend = c_red;

	takeDamage(other.damage)
	resistant+=0.2
	alarm[0] = 5;
}

array_push(damaged,other.id)