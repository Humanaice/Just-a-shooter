/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 340F728E
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (global.gamePaused)$(13_10){$(13_10)	script_execute(scrPauseDraw);$(13_10)	//if (surface_exists(paused_surf))$(13_10)	//{$(13_10)		//draw_surface(paused_surf, 0, 0);$(13_10)		//draw_sprite(screenshot,0,0,);$(13_10)		var resolution = GetResolution();$(13_10)		draw_set_color(c_black)$(13_10)		draw_set_alpha(0.75)$(13_10)		draw_rectangle(0,0,resolution[0] ,resolution[1],false)$(13_10)		draw_set_alpha(1.0)$(13_10)		draw_set_color(c_white)$(13_10)		//draw_set_font(fnt_title_screan_xsm)$(13_10)		draw_set_halign(fa_center)$(13_10)		draw_set_valign(fa_middle)$(13_10)	$(13_10)		draw_text(resolution[0] * 0.5,resolution[1] * 0.5, "Game Paused")$(13_10)		for (var i = 0; i < array_length(pause_option); i++)$(13_10)		{$(13_10)			var _print = ""$(13_10)			if (i == pause_option_selected)$(13_10)			{$(13_10)				_print += "> " + pause_option[i] + " <"$(13_10)			}$(13_10)			else$(13_10)			{$(13_10)				_print += pause_option[i]$(13_10)				draw_set_alpha(0.7)$(13_10)			}$(13_10)			draw_text(resolution[0] * 0.5,resolution[1] * 0.5 + 18 + (i * 20), _print)$(13_10)			draw_set_alpha(1.0)$(13_10)		$(13_10)		}$(13_10)		draw_set_halign(fa_left)$(13_10)		draw_set_valign(fa_top)$(13_10)	//} else$(13_10)	//{$(13_10)	//    //paused_surf = surface_create(room_width, room_height);$(13_10)	//    //surface_set_target(paused_surf);$(13_10)	//    //draw_surface(application_surface, 0, 0);$(13_10)	//    //surface_reset_target();$(13_10)	//}$(13_10)}"
/// @description Execute Code
if (global.gamePaused)
{
	script_execute(scrPauseDraw);
	//if (surface_exists(paused_surf))
	//{
		//draw_surface(paused_surf, 0, 0);
		//draw_sprite(screenshot,0,0,);
		var resolution = GetResolution();
		draw_set_color(c_black)
		draw_set_alpha(0.75)
		draw_rectangle(0,0,resolution[0] ,resolution[1],false)
		draw_set_alpha(1.0)
		draw_set_color(c_white)
		//draw_set_font(fnt_title_screan_xsm)
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
	
		draw_text(resolution[0] * 0.5,resolution[1] * 0.5, "Game Paused")
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
			draw_text(resolution[0] * 0.5,resolution[1] * 0.5 + 18 + (i * 20), _print)
			draw_set_alpha(1.0)
		
		}
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
	//} else
	//{
	//    //paused_surf = surface_create(room_width, room_height);
	//    //surface_set_target(paused_surf);
	//    //draw_surface(application_surface, 0, 0);
	//    //surface_reset_target();
	//}
}