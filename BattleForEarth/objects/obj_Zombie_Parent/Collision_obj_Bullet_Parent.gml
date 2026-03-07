other.bullethealth = 0

zombieHealth-= other.damage
image_blend = c_red;
image_xscale = -1.05;
image_yscale = 0.95;

if zombieHealth <= 0
{
	setInactive()
}

var _callback = function()
{
	image_blend = c_white;
	image_xscale = -1;
	image_yscale = 1;
}
call_later(10,time_source_units_frames,_callback,false)