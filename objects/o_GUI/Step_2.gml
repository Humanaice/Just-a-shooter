/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 47F77836
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)if (global.gamePaused)$(13_10){$(13_10)	$(13_10)	var key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))$(13_10)	var key_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))$(13_10)	pause_option_selected += (key_down - key_up)$(13_10)	if (pause_option_selected >= array_length(pause_option)) pause_option_selected = 0;$(13_10)	if (pause_option_selected < 0) pause_option_selected = array_length(pause_option) - 1;$(13_10)	$(13_10)	var key_activate = keyboard_check_pressed(vk_space)$(13_10)	if (key_activate)$(13_10)	{$(13_10)		switch (pause_option_selected)$(13_10)		{$(13_10)			case 0:$(13_10)			{$(13_10)				global.gamePaused = false;$(13_10)				//instance_activate_all()$(13_10)				//with (all)$(13_10)			} break$(13_10)			case 1:$(13_10)			{$(13_10)				room_restart();$(13_10)			}break;$(13_10)			case 2:$(13_10)			{$(13_10)				with (o_game) instance_destroy();$(13_10)				game_restart();$(13_10)			}break;$(13_10)			$(13_10)			case 3:$(13_10)			{$(13_10)				game_end()$(13_10)			}break$(13_10)		}$(13_10)	}$(13_10)	$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
/// @description Execute Code

if (global.gamePaused)
{
	
	var key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))
	var key_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))
	pause_option_selected += (key_down - key_up)
	if (pause_option_selected >= array_length(pause_option)) pause_option_selected = 0;
	if (pause_option_selected < 0) pause_option_selected = array_length(pause_option) - 1;
	
	var key_activate = keyboard_check_pressed(vk_space)
	if (key_activate)
	{
		switch (pause_option_selected)
		{
			case 0:
			{
				global.gamePaused = false;
				//instance_activate_all()
				//with (all)
			} break
			case 1:
			{
				room_restart();
			}break;
			case 2:
			{
				with (o_game) instance_destroy();
				game_restart();
			}break;
			
			case 3:
			{
				game_end()
			}break
		}
	}
	
}