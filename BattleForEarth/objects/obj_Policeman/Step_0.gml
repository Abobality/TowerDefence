var zone = collision_rectangle(x,y-32,range,y+32,obj_Parent_Zombie,true,true)

if zone != noone 
{
	image_speed = 1;
}else{
	image_speed = 0;
	image_index = 0;
}

if image_index = 4
{
	instance_create_layer(x+80,y-8,"Instances",obj_Shot_Gun_Shot,
	{
		drawColour: c_yellow,
		damage: damage,
		image_xscale: 3,
		image_yscale: 3
	})
}