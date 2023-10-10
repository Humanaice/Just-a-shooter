/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 1D923CDA
event_inherited();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2E4EA4DB
/// @DnDArgument : "var" "global.gamePaused"
/// @DnDArgument : "value" "false"
if(global.gamePaused == false)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 091B85D3
	/// @DnDParent : 2E4EA4DB
	/// @DnDArgument : "code" "direction = bullet_angle;$(13_10)speed = bullet_spd;$(13_10)var bouncing = 0.1;$(13_10)image_xscale = random_range(scale - bouncing,scale + bouncing);$(13_10)image_yscale = random_range(scale - bouncing,scale + bouncing);$(13_10)$(13_10)if (bullet_team == fireteam.ALLY)$(13_10){$(13_10)	sprite_index = sprite_bullet_ally;$(13_10)} else $(13_10){$(13_10)	sprite_index = spr_fire_ball_enemy;$(13_10)}"
	direction = bullet_angle;
	speed = bullet_spd;
	var bouncing = 0.1;
	image_xscale = random_range(scale - bouncing,scale + bouncing);
	image_yscale = random_range(scale - bouncing,scale + bouncing);
	
	if (bullet_team == fireteam.ALLY)
	{
		sprite_index = sprite_bullet_ally;
	} else 
	{
		sprite_index = spr_fire_ball_enemy;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 48DBC790
else
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 1F8B548E
	/// @DnDParent : 48DBC790
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10) stop_at_pause()"
	/// @description Execute Code
	 stop_at_pause()
}