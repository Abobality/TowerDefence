if x >= 832 or bulletPersistent <= 0 
{
	if !array_contains(obj_bullet_pool.bullet_Grenadelvl3_pool,id)
	{
		x = 1000
		y = 0
		bulletSpeed = 0
		active = false
		visible = false
		bulletPersistent = 1;
		array_push(obj_bullet_pool.bullet_Grenadelvl3_pool,id)
	}
}