var zone = collision_rectangle(x,y-32,x + range,y+32,obj_Parent_Zombie,true,true)

if zone != noone 
{
	image_speed = 1;
}else{
	image_speed = 0;
	image_index = 0;
}

if image_index == 4
{
	punch()
}