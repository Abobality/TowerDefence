var nearest = instance_nearest(path_get_point_x(pth_level_1,10),path_get_point_y(pth_level_1,10),obj_Parent_Zombie)

if instance_exists(nearest)
{
	move_towards_point(nearest.x,nearest.y,40)
	direction = point_direction(x,y,nearest.x,nearest.y) + irandom_range(-20,20)
}

lifetime = 0;
maxlifetime = 10
bulletPersistent = 10;

image_index = -1;

image_angle = direction

image_speed = 0;

image_index = 1;