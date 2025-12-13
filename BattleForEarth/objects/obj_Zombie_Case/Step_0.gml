if healthPoints <=0
{
	instance_create_depth(x,y,depth,obj_Basic_Zombie);
	instance_create_depth(x,y,depth,obj_Fast_Zombie);
	
	instance_destroy(self)
}

depth = -y;