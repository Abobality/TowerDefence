var nearest = instance_nearest(x,y,obj_Parent_Zombie)

move_towards_point(nearest.x,nearest.y,40)

lifetime = 0;
maxlifetime = 10
bulletPersistent = 10;

direction = point_direction(x,y,nearest.x,nearest.y) + irandom_range(-20,20)

image_angle = direction

image_speed = 0;

image_index = 1;