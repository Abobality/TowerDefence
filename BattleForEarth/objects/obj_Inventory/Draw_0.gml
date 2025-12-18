var colour = c_green;
var path = layer_tilemap_get_id("Path");
var tileIdPath = tilemap_get_at_pixel(path,mouse_x,mouse_y);

for(var i = 0;i < array_length(inventory);i++)
{
	if point_in_rectangle(mouse_x,mouse_y,x-32,y + i*96-48,x+32,y + i*96 + 48)
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
	
	if mouse_y > 102 and  mouse_x < 816 
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
				
			case 4:
				draw_sprite_ext(drawSprites[inventory[3]],0,mouse_x div 32 * 32,mouse_y div 32 * 32,1,1,0,colour,0.8);
				break;
				
			case 5:
				draw_sprite_ext(drawSprites[inventory[4]],0,mouse_x div 32 * 32,mouse_y div 32 * 32,1,1,0,colour,0.8);
				break;

		}
	}
	
	draw_sprite_ext(spr_GameCards_Sheet,inventory[i],x,y+96*i,xscale,xscale,0,c_white,1)
	draw_text_transformed(x,y+96*i +34,placeTower[inventory[i]].cost,xscale,xscale,0)
}
for(var i = 0;i < array_length(jokerInventory);i++)
{
	if point_in_rectangle(mouse_x,mouse_y,x+48,y + i*96-48,x+112,y + i*96 + 48)
	{
		xscale = 1.1
	}else
	{
		xscale = 1
	}
	draw_sprite_ext(spr_Joker_Cards,jokerInventory[i],x + 64,y+96*i,xscale,xscale,0,c_white,1)
}
