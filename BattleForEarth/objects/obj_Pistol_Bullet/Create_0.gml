var nearest = instance_nearest(x,y,obj_Parent_Zombie)

move_towards_point(nearest.x,nearest.y,10)

lifetime = 0;
maxlifetime = 120
bulletPersistent = 1;

image_angle = point_direction(x,y,nearest.x,nearest.y)

image_speed = 0;

image_index = 0;