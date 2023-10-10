/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 293D0C0D
/// @DnDArgument : "code" "if (global.gamePaused)$(13_10){$(13_10)	instance_deactivate_object(self)$(13_10)}$(13_10)else$(13_10){$(13_10)	instance_activate_object(self)$(13_10)}$(13_10)if (image_index > image_number - 1)$(13_10){$(13_10)	instance_destroy()$(13_10)}$(13_10)$(13_10)x = o_Player.x $(13_10)y = o_Player.y - 40"
if (global.gamePaused)
{
	instance_deactivate_object(self)
}
else
{
	instance_activate_object(self)
}
if (image_index > image_number - 1)
{
	instance_destroy()
}

x = o_Player.x 
y = o_Player.y - 40