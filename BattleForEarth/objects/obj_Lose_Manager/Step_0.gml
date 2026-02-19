if global.BaseHealth <= 0
{
	global.Money += floor(obj_Spawn_Wave_Manager.wave * 10)
	saveData()
	instance_destroy(obj_Parent_Zombie);
	instance_destroy(obj_Tower_Parent);
	instance_destroy(obj_Support_Tower_Parrent);
	instance_create_layer(room_width/2,room_height/2,"UI",obj_Title,
	{
		image_xscale: 8 ,
		image_blend: c_red,
		text: "defeat"
	});
	instance_deactivate_layer("Instances");
	
	if keyboard_check_pressed(ord("R"))
	{
		room_restart();
	}
	else if keyboard_check_pressed(ord("E"))
	{
		room_goto(rm_Choose_menu);
	}
}