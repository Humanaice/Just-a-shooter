/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 0326DA15
event_inherited();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 66F4A607
/// @DnDArgument : "var" "global.gamePaused"
/// @DnDArgument : "value" "false"
if(global.gamePaused == false)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 17A6FB42
	/// @DnDParent : 66F4A607
	/// @DnDArgument : "code" "angle += add_angle_rotation;$(13_10)shield_distance += add_shield_distance;$(13_10)$(13_10)if (shield_distance >= 90) or (shield_distance <= 70)$(13_10){$(13_10)	add_shield_distance *= -1;$(13_10)}$(13_10)$(13_10)x = o_Player.x  + lengthdir_x(shield_distance,angle);$(13_10)y = o_Player.y  + lengthdir_y(shield_distance,angle);$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
	angle += add_angle_rotation;
	shield_distance += add_shield_distance;
	
	if (shield_distance >= 90) or (shield_distance <= 70)
	{
		add_shield_distance *= -1;
	}
	
	x = o_Player.x  + lengthdir_x(shield_distance,angle);
	y = o_Player.y  + lengthdir_y(shield_distance,angle);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5A1ED4B3
else
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 46F370FF
	/// @DnDParent : 5A1ED4B3
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10) stop_at_pause()"
	/// @description Execute Code
	 stop_at_pause()
}