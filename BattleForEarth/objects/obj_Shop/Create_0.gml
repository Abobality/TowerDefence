instance_destroy(obj_Joker_Parent)
instance_destroy(obj_Parent_Zombie)
instance_deactivate_object(obj_Wave_Manager)
instance_deactivate_object(obj_Inventory)

image_speed = 0;

jokerShop = []

jokerShopFiller = function()
{
	for (var i = 0;i < 5;i++)
	{
		array_push(jokerShop,i)
	}
}

jokerShopFiller();