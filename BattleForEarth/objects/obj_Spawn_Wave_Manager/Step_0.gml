if triumphWait
{
	if wave == array_length(waves) and instance_number(obj_Parent_Zombie) <= 0 and global.BaseHealth > 0
	{
		instance_create_layer(0,0,"UI",obj_Win_Manager)	
	}
}