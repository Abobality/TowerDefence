image_speed = 0;

hp = 4;
upgradeCost = 2;

shot = function()
{
	image_xscale = 1.05;
	image_yscale = 0.95;
	
	if array_length(global.PistolBulletPool) > 0
	{
		global.PistolBulletPool[0].setActive(4,x,y)
		array_delete(global.PistolBulletPool,0,1)
	}else{
		instance_create_layer(x,y,"Instances",obj_Pistol_Bullet)
		global.PistolBulletPool[0].setActive(4,x,y)
		array_delete(global.PistolBulletPool,0,1)
	}
	
	var _callback = function()
	{
		image_xscale = 1;
		image_yscale = 1;
	}
	call_later(10,time_source_units_frames,_callback,false)
}