draw_self()
for (var i = 0;i<array_length(jokerShop);i++)
{
	for (var j = 0;j<array_length(jokerShop[i]);j++)
	{
		draw_sprite_ext(spr_Joker_Cards,jokerShop[i][j],room_width/4 + 64 * j,y+96*i,1,1,0,c_white,1)
	}
}

for (var i = 0;i<array_length(cardShop);i++)
{
	for (var j = 0;j<array_length(cardShop[i]);j++)
	{
		draw_sprite_ext(spr_GameCards_Sheet,cardShop[i][j],room_width/4 * 3 + 64 * j,y+96*i,1,1,0,c_white,1)
	}
}