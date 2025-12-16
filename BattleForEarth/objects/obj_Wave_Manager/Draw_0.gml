draw_set_font(fnt_Agressive20)
draw_set_colour(c_white);
if currentWave == 0
{
	draw_text(x,y,"waiting...")
}else{
	draw_text(x,y,$"wave: {currentWave}")
}