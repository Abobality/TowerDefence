var nearest = instance_nearest(x,y,obj_Parent_Zombie)

if instance_exists(nearest)
{
	move_towards_point(nearest.x,nearest.y,80)
	image_angle = point_direction(x,y,nearest.x,nearest.y)
}

lifetime = 0;
maxlifetime = 120
bulletPersistent = 2;

image_index = -1;

image_speed = 0;

image_index = 2;