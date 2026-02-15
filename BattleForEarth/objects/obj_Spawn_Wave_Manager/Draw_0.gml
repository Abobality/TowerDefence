draw_set_font(fnt_Agressive20)
draw_set_halign(fa_left);
draw_set_colour(c_white);

if isWaiting == true
{
	draw_text(x,y,$"Waiting")
}else
{
	draw_text(x,y,$"wave: {wave}")
}