draw_set_font(fnt_Agressive20);
draw_set_halign(fa_left);
draw_set_valign(fa_middle)
draw_set_alpha(1)
draw_set_colour(#FFF200)
draw_text(x,y-32,$"max wave:{(global.waveRecord)}");
draw_text(x,y,$"{global.Money}");
draw_sprite(spr_Money_Icon,0,x-32,y-16)
draw_set_colour(c_white)