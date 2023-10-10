/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 52C53227
event_inherited();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 55F8E8BB
/// @DnDArgument : "var" "global.gamePaused"
/// @DnDArgument : "value" "false"
if(global.gamePaused == false)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 12E604DA
	/// @DnDParent : 55F8E8BB
	/// @DnDArgument : "code" "$(13_10)image_xscale = scale;$(13_10)image_yscale = scale;$(13_10)scale += add_scale;$(13_10)image_alpha -= decrease_alpha;$(13_10)$(13_10)if (image_alpha <= 0)$(13_10){$(13_10)	instance_destroy()$(13_10)}"
	
	image_xscale = scale;
	image_yscale = scale;
	scale += add_scale;
	image_alpha -= decrease_alpha;
	
	if (image_alpha <= 0)
	{
		instance_destroy()
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 34A8E327
else
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 1200B421
	/// @DnDParent : 34A8E327
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10) stop_at_pause()"
	/// @description Execute Code
	 stop_at_pause()
}