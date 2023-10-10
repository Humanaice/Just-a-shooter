/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0EC873BD
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)if (enemy_hpnow <= 0)$(13_10){$(13_10)	$(13_10)	instance_destroy()$(13_10)}$(13_10)$(13_10)//if (global.gamePaused)$(13_10)//{$(13_10)//	instance_deactivate_object(self)$(13_10)//}$(13_10)//else$(13_10)//{$(13_10)//	instance_activate_object(self)$(13_10)//}"
/// @description Execute Code

if (enemy_hpnow <= 0)
{
	
	instance_destroy()
}

//if (global.gamePaused)
//{
//	instance_deactivate_object(self)
//}
//else
//{
//	instance_activate_object(self)
//}