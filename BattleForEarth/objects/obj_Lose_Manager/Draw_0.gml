draw_set_font(fnt_Agressive20);
draw_text(576,32,$"lives: {global.BaseHealth}")

draw_set_font(fnt_Agressive12);
if global.BaseHealth <= 0
{
	draw_text(room_width/2,room_height-32,"press  R  for start over or  E  for go to menu")
}