with(obj_Bullet_Parent)
{
	if self.bulletPersistent = 0 or self.x >= 816
	{
		instance_destroy(self);
	}
}