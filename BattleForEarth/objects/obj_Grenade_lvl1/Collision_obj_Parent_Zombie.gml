obj_bullet_pool.bullet_Explosion_pool[0].x = x
obj_bullet_pool.bullet_Explosion_pool[0].y = y
obj_bullet_pool.bullet_Explosion_pool[0].active = true
obj_bullet_pool.bullet_Explosion_pool[0].visible = true
obj_bullet_pool.bullet_Explosion_pool[0].image_speed = 1
obj_bullet_pool.bullet_Explosion_pool[0].damage = 500
array_delete(obj_bullet_pool.bullet_Explosion_pool,0,1)

if !array_contains(obj_bullet_pool.bullet_Grenadelvl2_pool,id)
{
	x = 1000
	y = 0
	bulletSpeed = 0
	active = false
	visible = false
	bulletPersistent = 1;
	array_push(obj_bullet_pool.bullet_Grenadelvl2_pool,id)
}

