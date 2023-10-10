/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 733068AD
/// @DnDArgument : "code" "if (global.gamePaused)$(13_10){$(13_10)	instance_deactivate_object(self)$(13_10)}$(13_10)else$(13_10){$(13_10)	instance_activate_object(self)$(13_10)}$(13_10)image_xscale = scale;$(13_10)image_yscale = scale;$(13_10)$(13_10)$(13_10)"
if (global.gamePaused)
{
	instance_deactivate_object(self)
}
else
{
	instance_activate_object(self)
}
image_xscale = scale;
image_yscale = scale;