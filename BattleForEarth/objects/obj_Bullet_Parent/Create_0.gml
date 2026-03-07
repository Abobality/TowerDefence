bullethealth = 50;
bulletSpeed = 4;
bulletActive = true;
damage = 1;

move = function()
{
	move_towards_point(x + lengthdir_x(bulletSpeed,image_angle),y,bulletSpeed)
}

setInactive = function()
{
	bulletSpeed = 0;
	move();
	visible = false;
	x = -64;
	y = -64;
	poolPushing()
}

setActive = function(Speed,xpos,ypos)
{
	bullethealth = 50;
	bulletSpeed = Speed;
	move();
	visible = true;
	x = xpos;
	y = ypos;
	
}

poolPushing = function()
{
	if !array_contains(global.PistolBulletPool,id)
	{
		array_push(global.PistolBulletPool,id)
	}
}

poolPushing()
setInactive()