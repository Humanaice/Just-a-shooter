/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0631CFAE
/// @DnDArgument : "code" "//if (room == rm_title_screan)$(13_10)//{$(13_10)//	draw_set_font(fnt_title_screan_small);$(13_10)//	draw_set_halign(fa_center)$(13_10)//	draw_set_color(c_white)$(13_10)//	draw_rectangle(room_width/4,room_height/10,980,room_height/8,false)$(13_10)//	//draw_text(room_width/2,room_height/15,"Press Space to Play!")$(13_10)//	draw_set_font(fnt_title_screan)$(13_10)//	draw_text(room_width/2,room_height/90,"Chamelion Ship")$(13_10)	$(13_10)//}$(13_10)/*$(13_10)if (room == rm_level_1)$(13_10){$(13_10)	draw_set_colour($FFFFFFFF & $ffffff);$(13_10)	var l0F6CA152_0=($FFFFFFFF >> 24);$(13_10)	draw_set_alpha(l0F6CA152_0 / $ff);$(13_10)$(13_10)	draw_set_font(Font1);$(13_10)$(13_10)$(13_10)	draw_text(20, 90, string("room ") + string(room_speed));$(13_10)	draw_text(20, 110, string("room ") + string(global.clock));$(13_10)}$(13_10)*/$(13_10)$(13_10)$(13_10)if (room == rm_game_over)$(13_10){$(13_10)	var text_ymiddle = room_height/2$(13_10)	var dist = 500$(13_10)	draw_set_halign(fa_center)$(13_10)	draw_set_color(c_white)$(13_10)	draw_set_font(fnt_title_screan)$(13_10)	draw_text(room_width/2,text_ymiddle - dist,"Game Over")$(13_10)	draw_set_font(fnt_title_screan_small)$(13_10)	draw_text(room_width/2,890,"Press R to Restart")$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
//if (room == rm_title_screan)
//{
//	draw_set_font(fnt_title_screan_small);
//	draw_set_halign(fa_center)
//	draw_set_color(c_white)
//	draw_rectangle(room_width/4,room_height/10,980,room_height/8,false)
//	//draw_text(room_width/2,room_height/15,"Press Space to Play!")
//	draw_set_font(fnt_title_screan)
//	draw_text(room_width/2,room_height/90,"Chamelion Ship")
	
//}
/*
if (room == rm_level_1)
{
	draw_set_colour($FFFFFFFF & $ffffff);
	var l0F6CA152_0=($FFFFFFFF >> 24);
	draw_set_alpha(l0F6CA152_0 / $ff);

	draw_set_font(Font1);


	draw_text(20, 90, string("room ") + string(room_speed));
	draw_text(20, 110, string("room ") + string(global.clock));
}
*/


if (room == rm_game_over)
{
	var text_ymiddle = room_height/2
	var dist = 500
	draw_set_halign(fa_center)
	draw_set_color(c_white)
	draw_set_font(fnt_title_screan)
	draw_text(room_width/2,text_ymiddle - dist,"Game Over")
	draw_set_font(fnt_title_screan_small)
	draw_text(room_width/2,890,"Press R to Restart")
}




/**/