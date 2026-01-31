other.bulletPersistent --

if !array_contains(damaged,other.id)
{
	image_blend = c_red;
	image_speed = 0;
	path_speed = 0;

	takeDamage(other.damage)

	alarm[0] = 5;
}

array_push(damaged,other.id)