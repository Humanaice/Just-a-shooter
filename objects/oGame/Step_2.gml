/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7F3A3789
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)//with(global.iCamera) $(13_10)//{$(13_10)//	ResizeWindow(3)$(13_10)//}"
/// @description Execute Code
//with(global.iCamera) 
//{
//	ResizeWindow(3)
//}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 743810BC
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)/// @description Execute Code$(13_10)$(13_10)if (global.gamePaused)$(13_10){$(13_10)	$(13_10)	script_execute(scrPlayerInput);$(13_10)	instance_activate_object(oGUI);$(13_10)	instance_activate_object(oCamera);$(13_10)	pause_option_selected += (downkeyReleased - upkeyReleased);$(13_10)	if (pause_option_selected >= array_length(pause_option)) pause_option_selected = 0;$(13_10)	if (pause_option_selected < 0) pause_option_selected = array_length(pause_option) - 1;$(13_10)	if (spacekey)$(13_10)	{$(13_10)		switch (pause_option_selected)$(13_10)		{$(13_10)			case 0:$(13_10)			{$(13_10)				global.gamePaused = false;$(13_10)				instance_activate_all();$(13_10)				//with (all)$(13_10)			} break$(13_10)			case 1:$(13_10)			{$(13_10)				room_restart();$(13_10)			}break;$(13_10)			case 2:$(13_10)			{$(13_10)				with (oGame) instance_destroy();$(13_10)				game_restart();$(13_10)			}break;$(13_10)			$(13_10)			case 3:$(13_10)			{$(13_10)				game_end()$(13_10)			}break$(13_10)		}$(13_10)	}$(13_10)	$(13_10)} else$(13_10){$(13_10)	instance_activate_all();$(13_10)	$(13_10)}$(13_10)"
/// @description Execute Code
/// @description Execute Code

if (global.gamePaused)
{
	
	script_execute(scrPlayerInput);
	instance_activate_object(oGUI);
	instance_activate_object(oCamera);
	pause_option_selected += (downkeyReleased - upkeyReleased);
	if (pause_option_selected >= array_length(pause_option)) pause_option_selected = 0;
	if (pause_option_selected < 0) pause_option_selected = array_length(pause_option) - 1;
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