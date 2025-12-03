var colour = c_green;
var path = layer_tilemap_get_id("Path");
var tileIdPath = tilemap_get_at_pixel(path,mouse_x,mouse_y);

for(var i = 0;i < array_length(inventory);i++)
{
	if point_in_rectangle(mouse_x,mouse_y,32 + 80 * i,18,96 + 80 * i,104)
	{
		xscale = 1.1
	}else
	{
		xscale = 1
	}
	
	if position_meeting(mouse_x div 32 * 32,mouse_y div 32 * 32,obj_Turret_Parent) or  tileIdPath = 1 or  tileIdPath = 2
	{
		colour = c_red
		placeEnable = false;

	}else{
		colour = c_green
		placeEnable = true;

	}
	
	if mouse_y > 102
	{
		switch placeSlot
		{
			case 1:
				draw_sprite_ext(drawSprites[inventory[0]],0,mouse_x div 32 * 32,mouse_y div 32 * 32,1,1,0,colour,0.8);
				break;
			
			case 2:
				draw_sprite_ext(drawSprites[inventory[1]],0,mouse_x div 32 * 32,mouse_y div 32 * 32,1,1,0,colour,0.8);
				break; 
			
			case 3:
				draw_sprite_ext(drawSprites[inventory[2]],0,mouse_x div 32 * 32,mouse_y div 32 * 32,1,1,0,colour,0.8);
				break;

		}
	}
	
	draw_sprite_ext(spr_GameCards_Sheet,inventory[i],80+80 * i,64,xscale,xscale,rotation,c_white,1)
}

