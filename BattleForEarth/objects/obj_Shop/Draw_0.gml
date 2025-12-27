draw_self()

for(var i = 0;i < array_length(jokerShop);i++)
{
	draw_sprite(spr_Joker_Cards,jokerShop[i],room_width/3 + 64*i + 36,y + 192)
}
