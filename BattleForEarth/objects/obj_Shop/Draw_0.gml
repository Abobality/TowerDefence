draw_self()
for (var i = 0;i<array_length(jokerShop);i++)
{
	for (var j = 0;j<array_length(jokerShop[i]);j++)
	{
		if point_in_rectangle(mouse_x,mouse_y,room_width/4 + 64 * j - 32,y+96*i-48,room_width/4 + 64 * j+32,y + i*96 + 48)
		{
			xscale = 1.1
		}else
		{
			xscale = 1
		}
		draw_sprite_ext(spr_Joker_Cards,jokerShop[i][j],room_width/4 + 64 * j,y+96*i,xscale,xscale,0,c_white,1)
	}
}

for (var i = 0;i<array_length(cardShop);i++)
{
	for (var j = 0;j<array_length(cardShop[i]);j++)
	{
		if point_in_rectangle(mouse_x,mouse_y,room_width/4 * 3 + 64 * j - 32-64,y+96*i-48,room_width/4 * 3 + 64 * j+32-64,y + i*96 + 48)
		{
			xscale = 1.1
		}else
		{
			xscale = 1
		}
		draw_sprite_ext(spr_GameCards_Sheet,cardShop[i][j],room_width/4 * 3 + 64 * j-64,y+96*i,xscale,xscale,0,c_white,1)
	}
}