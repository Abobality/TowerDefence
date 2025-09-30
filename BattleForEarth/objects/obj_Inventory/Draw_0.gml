for(var i = 0;i < array_length(inventory);i++)
{
	if point_in_rectangle(mouse_x,mouse_y,16 + 80 * i,18,80 + 80 * i,104)
	{
		xscale = 1.1
	}else
	{
		xscale = 1
	}
	
	switch placeSlot
	{
		case 1:
			draw_sprite_ext(spr_Scout,0,mouse_x,mouse_y,1,1,0,c_green,0.5);
			break;
			
		case 2:
			draw_sprite_ext(spr_Scout,1,mouse_x,mouse_y,1,1,0,c_green,0.5);
			break;
			
		case 3:
			draw_sprite_ext(spr_Scout,2,mouse_x,mouse_y,1,1,0,c_green,0.5);
			break;

	}
	
	draw_sprite_ext(spr_GameCards_Sheet,inventory[i],48+80 * i,64,xscale,xscale,rotation,c_white,1)
}

