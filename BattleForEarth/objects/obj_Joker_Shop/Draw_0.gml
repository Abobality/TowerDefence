draw_set_alpha(0.5)
draw_rectangle_colour(0,96,832,room_height,c_black,c_black,c_black,c_black,false)
draw_set_alpha(1)
draw_self()
for (var i = 0;i < array_length(shop);i++)
{
	draw_sprite_ext(spr_Joker_Cards,shop[i],288 + 184*i,528,1.5,1.5,0,c_white,1)
	draw_rectangle(240 + 184*i,456,240 + 96 + 184*i,600,true)
}