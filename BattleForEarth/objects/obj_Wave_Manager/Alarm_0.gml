repeat(wavePlan[currentWave - 1].amount)
{
	instance_create_depth(room_width,irandom_range(128,room_height),-5,wavePlan[currentWave - 1].zombie)
}

if currentWave!= 4
{
	currentWave++
}

with(obj_Support_Tower_Parent)
{
	obj_Support_Tower_Parent.supportPerWave()
}

alarm[0] = 600;