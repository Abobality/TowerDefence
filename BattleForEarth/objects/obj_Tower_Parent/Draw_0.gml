draw_self()

drawFunction()

draw_set_font(fnt_Agressive12);
draw_set_colour(c_white);
draw_set_halign(fa_center);

if upgrade == true
{
	draw_text(x,y+32,$"{name} lvl{lvl}\ncost:{cost}")
}
