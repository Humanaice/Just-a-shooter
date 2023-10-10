/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 18F85CFA
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (global.gamePaused)$(13_10){$(13_10)	var resolution_w = global.res_width * global.res_scale$(13_10)	var resolution_h =global.res_height * global.res_scale$(13_10)	draw_set_color(c_black)$(13_10)	draw_set_alpha(0.75)$(13_10)	draw_rectangle(0,0,resolution_w ,resolution_h,false)$(13_10)	draw_set_alpha(1.0)$(13_10)	draw_set_color(c_white)$(13_10)	draw_set_font(fnt_title_screan_xsm)$(13_10)	draw_set_halign(fa_center)$(13_10)	draw_set_valign(fa_middle)$(13_10)	$(13_10)	draw_text(resolution_w * 0.5,resolution_h * 0.5, "Game Paused")$(13_10)	for (var i = 0; i < array_length(pause_option); i++)$(13_10)	{$(13_10)		var _print = ""$(13_10)		if (i == pause_option_selected)$(13_10)		{$(13_10)			_print += "> " + pause_option[i] + " <"$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)			_print += pause_option[i]$(13_10)			draw_set_alpha(0.7)$(13_10)		}$(13_10)		draw_text(resolution_w * 0.5,resolution_h * 0.5 + 18 + (i * 20), _print)$(13_10)		draw_set_alpha(1.0)$(13_10)	}$(13_10)	$(13_10)}$(13_10)$(13_10)if (room == rm_level_1)$(13_10){$(13_10)	//draw_sprite_ext(metalPanel,-1,1632,64,2.6,1.32,0,c_white,1)$(13_10)	//draw_sprite_ext(metalPanel,-1,1632,256,2.6,1.32,0,c_white,1)$(13_10)	//draw_sprite_ext(metalPanel,-1,1632,448,2.6,1.32,0,c_white,1)$(13_10)	$(13_10)	draw_sprite_ext(squareWhite,-1,1472,64,7,5,0,c_black,1)$(13_10)	draw_sprite_ext(squareWhite,-1,1472,256,7,5,0,c_black,1)$(13_10)	draw_sprite_ext(squareWhite,-1,1472,448,7,5,0,c_black,1)$(13_10)	draw_sprite_ext(glassPanel_corners,-1,1472,64,1.32,1.32,0,c_white,1)$(13_10)	draw_sprite_ext(glassPanel_corners,-1,1472,256,1.32,1.32,0,c_white,1)$(13_10)	draw_sprite_ext(glassPanel_corners,-1,1472,448,1.32,1.32,0,c_white,1)$(13_10)	$(13_10)	$(13_10)	$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)	$(13_10)$(13_10)"
/// @description Execute Code
if (global.gamePaused)
{
	var resolution_w = global.res_width * global.res_scale
	var resolution_h =global.res_height * global.res_scale
	draw_set_color(c_black)
	draw_set_alpha(0.75)
	draw_rectangle(0,0,resolution_w ,resolution_h,false)
	draw_set_alpha(1.0)
	draw_set_color(c_white)
	draw_set_font(fnt_title_screan_xsm)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	
	draw_text(resolution_w * 0.5,resolution_h * 0.5, "Game Paused")
	for (var i = 0; i < array_length(pause_option); i++)
	{
		var _print = ""
		if (i == pause_option_selected)
		{
			_print += "> " + pause_option[i] + " <"
		}
		else
		{
			_print += pause_option[i]
			draw_set_alpha(0.7)
		}
		draw_text(resolution_w * 0.5,resolution_h * 0.5 + 18 + (i * 20), _print)
		draw_set_alpha(1.0)
	}
	
}

if (room == rm_level_1)
{
	//draw_sprite_ext(metalPanel,-1,1632,64,2.6,1.32,0,c_white,1)
	//draw_sprite_ext(metalPanel,-1,1632,256,2.6,1.32,0,c_white,1)
	//draw_sprite_ext(metalPanel,-1,1632,448,2.6,1.32,0,c_white,1)
	
	draw_sprite_ext(squareWhite,-1,1472,64,7,5,0,c_black,1)
	draw_sprite_ext(squareWhite,-1,1472,256,7,5,0,c_black,1)
	draw_sprite_ext(squareWhite,-1,1472,448,7,5,0,c_black,1)
	draw_sprite_ext(glassPanel_corners,-1,1472,64,1.32,1.32,0,c_white,1)
	draw_sprite_ext(glassPanel_corners,-1,1472,256,1.32,1.32,0,c_white,1)
	draw_sprite_ext(glassPanel_corners,-1,1472,448,1.32,1.32,0,c_white,1)
	
	
	
}