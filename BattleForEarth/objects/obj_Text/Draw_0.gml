time += 0.1

var pulse = 1.0 + 0.2 *sin(time)

draw_set_font(fnt_Agressive12)
draw_set_halign(fa_center)
draw_set_colour(c_yellow)

draw_text_transformed(x,y,text,pulse,pulse,20)