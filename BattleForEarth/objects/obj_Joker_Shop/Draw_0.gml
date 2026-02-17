draw_set_alpha(0.5)
draw_rectangle_colour(0,96,832,room_height,c_black,c_black,c_black,c_black,false)
draw_set_alpha(1)
draw_self()
draw_set_halign(fa_middle)
draw_set_colour(c_white)

for (var i = 0;i < array_length(shop);i++)
{
	var scale = 1.5;
	if point_in_rectangle(mouse_x,mouse_y,240 + 184*i,424,240 + 96 + 184*i,568)
	{
		scale = 1.6
		draw_text(288 + 184*i,596,global.Jokers[shop[i]].cost)
	}else{
		scale = 1.5
	}
	draw_sprite_ext(spr_Joker_Cards,shop[i],288 + 184*i,496,scale,scale,0,c_white,1)
}