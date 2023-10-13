/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 006D945D
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)/// @description Execute Code$(13_10)$(13_10)if (global.gamePaused)$(13_10){$(13_10)	$(13_10)	script_execute(scrPlayerInput);$(13_10)	//screenshot = Screenshot();$(13_10)	instance_deactivate_all(true);$(13_10)	instance_activate_object(oGame);$(13_10)	instance_activate_object(oCamera);$(13_10)	//with(global.iCamera) $(13_10)	//{$(13_10)	//	ResizeWindow(zoom);$(13_10)	//}$(13_10)	pause_option_selected += (downkeyReleased - upkeyReleased);$(13_10)	if (pause_option_selected >= array_length(pause_option)) pause_option_selected = 0;$(13_10)	if (pause_option_selected < 0) pause_option_selected = array_length(pause_option) - 1;$(13_10)	with (all) { draw_self();}$(13_10)	//var key_activate = keyboard_check_pressed(vk_space)$(13_10)	if (spacekey)$(13_10)	{$(13_10)		switch (pause_option_selected)$(13_10)		{$(13_10)			case 0:$(13_10)			{$(13_10)				global.gamePaused = false;$(13_10)				instance_activate_all();$(13_10)				//with (all)$(13_10)			} break$(13_10)			case 1:$(13_10)			{$(13_10)				room_restart();$(13_10)			}break;$(13_10)			case 2:$(13_10)			{$(13_10)				with (oGame) instance_destroy();$(13_10)				game_restart();$(13_10)			}break;$(13_10)			$(13_10)			case 3:$(13_10)			{$(13_10)				game_end()$(13_10)			}break$(13_10)		}$(13_10)	}$(13_10)	$(13_10)} else$(13_10){$(13_10)	instance_activate_all();$(13_10)	$(13_10)}$(13_10)"
/// @description Execute Code
/// @description Execute Code

if (global.gamePaused)
{
	
	script_execute(scrPlayerInput);
	//screenshot = Screenshot();
	instance_deactivate_all(true);
	instance_activate_object(oGame);
	instance_activate_object(oCamera);
	//with(global.iCamera) 
	//{
	//	ResizeWindow(zoom);
	//}
	pause_option_selected += (downkeyReleased - upkeyReleased);
	if (pause_option_selected >= array_length(pause_option)) pause_option_selected = 0;
	if (pause_option_selected < 0) pause_option_selected = array_length(pause_option) - 1;
	with (all) { draw_self();}
	//var key_activate = keyboard_check_pressed(vk_space)
	if (spacekey)
	{
		switch (pause_option_selected)
		{
			case 0:
			{
				global.gamePaused = false;
				instance_activate_all();
				//with (all)
			} break
			case 1:
			{
				room_restart();
			}break;
			case 2:
			{
				with (oGame) instance_destroy();
				game_restart();
			}break;
			
			case 3:
			{
				game_end()
			}break
		}
	}
	
} else
{
	instance_activate_all();
	
}