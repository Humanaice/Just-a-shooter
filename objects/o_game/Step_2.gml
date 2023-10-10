/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 63835343
/// @DnDArgument : "code" "/// @desc Pause the game$(13_10)if (keyboard_check_pressed(vk_escape))$(13_10){$(13_10)	global.gamePaused = !global.gamePaused;$(13_10)	$(13_10)	if(global.gamePaused)$(13_10)	{$(13_10)		with (all)$(13_10)		{$(13_10)			//draw_self()$(13_10)		}$(13_10)		//instance_deactivate_all(true)$(13_10)		//instance_activate_object(o_camera)$(13_10)		//instance_activate_object(o_GUI)$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		with (all)$(13_10)		{$(13_10)			//image_speed = game_paused_image_speed$(13_10)			//instance_activate_all()$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
/// @desc Pause the game
if (keyboard_check_pressed(vk_escape))
{
	global.gamePaused = !global.gamePaused;
	
	if(global.gamePaused)
	{
		with (all)
		{
			//draw_self()
		}
		//instance_deactivate_all(true)
		//instance_activate_object(o_camera)
		//instance_activate_object(o_GUI)
	}
	else
	{
		with (all)
		{
			//image_speed = game_paused_image_speed
			//instance_activate_all()
		}
	}
}