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
/// @DnDHash : 299E100B
/// @DnDDisabled : 1
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (global.gamePaused)$(13_10){$(13_10)	$(13_10)	script_execute(scrPlayerInput);$(13_10)	instance_deactivate_all(true);$(13_10)	instance_activate_object(oGUI);$(13_10)	instance_activate_object(oCamera);$(13_10)	pauseOptionSelected += (downkeyReleased - upkeyReleased);$(13_10)	if (pauseOptionSelected >= array_length(pauseOption)) pauseOptionSelected = 0;$(13_10)	if (pauseOptionSelected < 0) pauseOptionSelected = array_length(pauseOption) - 1;$(13_10)	with (all) { draw_self();}$(13_10)	//var key_activate = keyboard_check_pressed(vk_space)$(13_10)	if (spacekey)$(13_10)	{$(13_10)		switch (pause_option_selected)$(13_10)		{$(13_10)			case 0:$(13_10)			{$(13_10)				global.gamePaused = false;$(13_10)				instance_activate_all();$(13_10)				//with (all)$(13_10)			} break$(13_10)			case 1:$(13_10)			{$(13_10)				room_restart();$(13_10)			}break;$(13_10)			case 2:$(13_10)			{$(13_10)				with (o_game) instance_destroy();$(13_10)				game_restart();$(13_10)			}break;$(13_10)			$(13_10)			case 3:$(13_10)			{$(13_10)				game_end()$(13_10)			}break$(13_10)		}$(13_10)	}$(13_10)	$(13_10)} else$(13_10){$(13_10)	instance_activate_all();$(13_10)}"