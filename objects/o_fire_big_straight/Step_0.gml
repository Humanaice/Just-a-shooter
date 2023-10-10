/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 582150A4
event_inherited();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7B33E673
/// @DnDArgument : "var" "global.gamePaused"
/// @DnDArgument : "value" "false"
if(global.gamePaused == false)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 1BF81C87
	/// @DnDParent : 7B33E673
	/// @DnDArgument : "code" "direction = bullet_angle;$(13_10)speed = bullet_spd;$(13_10)image_xscale = scale;$(13_10)image_yscale = scale;$(13_10)image_angle = bullet_angle - 90$(13_10)/*$(13_10)var bouncing = 0.1;$(13_10)image_xscale = random_range(scale - bouncing,scale + bouncing);$(13_10)image_yscale = random_range(scale - bouncing,scale + bouncing);$(13_10)*/$(13_10)$(13_10)if (bullet_team == fireteam.ALLY)$(13_10){$(13_10)	sprite_index = spr_fire_straight_big;$(13_10)} else $(13_10){$(13_10)	sprite_index = spr_fire_straight_enemy;$(13_10)}"
	direction = bullet_angle;
	speed = bullet_spd;
	image_xscale = scale;
	image_yscale = scale;
	image_angle = bullet_angle - 90
	/*
	var bouncing = 0.1;
	image_xscale = random_range(scale - bouncing,scale + bouncing);
	image_yscale = random_range(scale - bouncing,scale + bouncing);
	*/
	
	if (bullet_team == fireteam.ALLY)
	{
		sprite_index = spr_fire_straight_big;
	} else 
	{
		sprite_index = spr_fire_straight_enemy;
	}/**/
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 709CD8FF
else
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 1103D983
	/// @DnDParent : 709CD8FF
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10) stop_at_pause()"
	/// @description Execute Code
	 stop_at_pause()
}