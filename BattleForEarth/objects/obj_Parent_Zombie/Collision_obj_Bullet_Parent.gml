if !array_contains(damaged,other.id)
{
	other.bulletPersistent -=1
	image_blend = c_red;
	image_speed = 0;
	path_speed = 0;

	takeDamage(other.damage)
	
	if healthPoints <=0
	{
			instance_destroy(self)
			global.enemyOnWave--;
			global.cash += maxHealth;
	}


	alarm[0] = 5;
}

array_push(damaged,other.id)