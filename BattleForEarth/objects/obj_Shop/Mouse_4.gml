instance_activate_layer("Instances")
if array_length(global.JokerChoosed)!= 0
{
	
	obj_Inventory.jokerInventoryUpgrade();
	obj_Inventory.spawnJoker()
	
}
instance_destroy(self)