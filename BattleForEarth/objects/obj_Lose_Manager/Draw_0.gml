draw_set_font(fnt_Agressive20);
draw_set_halign(fa_left);
draw_set_colour(c_green)
draw_text(x,y,$"lives: {global.BaseHealth}")

draw_set_font(fnt_Agressive12);
if global.BaseHealth <= 0
{
	draw_text(room_width/2,room_height-32,"press  R  for start over or  E  for go to menu")
}