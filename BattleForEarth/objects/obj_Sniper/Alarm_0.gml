var range = collision_circle(x,y,radius,obj_Parent_Zombie,false,true)

if towerLevel <= 4 and range != noone
{
	shotFunction(basicShot)
}
if towerLevel = 5 and range != noone
{
	shotFunction(laserShot)
}
