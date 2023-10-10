/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 3BEB3B59
event_inherited();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7106CE2B
/// @DnDArgument : "var" "global.gamePaused"
/// @DnDArgument : "value" "false"
if(global.gamePaused == false)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 1BF81C87
	/// @DnDParent : 7106CE2B
	/// @DnDArgument : "code" "direction = bullet_angle;$(13_10)if (bullet_team == fireteam.ALLY)$(13_10){$(13_10)	bullet_angle *= 1;$(13_10)	speed = bullet_spd;$(13_10)	sprite_index = spr_fire_straight;$(13_10)} else $(13_10){$(13_10)	if (bullet_preset == firepattern.HOMING)$(13_10)	{$(13_10)		scale = 0.3;$(13_10)		sprite_index = spr_fire_straight_enemy;$(13_10)	}$(13_10)	speed = bullet_spd;$(13_10)}$(13_10)image_xscale = scale - 0.1;$(13_10)image_yscale = scale + 0.1;$(13_10)image_angle = bullet_angle -90$(13_10)$(13_10)/*$(13_10)var bouncing = 0.1;$(13_10)image_xscale = random_range(scale - bouncing,scale + bouncing);$(13_10)image_yscale = random_range(scale - bouncing,scale + bouncing);$(13_10)*/$(13_10)$(13_10)"
	direction = bullet_angle;
	if (bullet_team == fireteam.ALLY)
	{
		bullet_angle *= 1;
		speed = bullet_spd;
		sprite_index = spr_fire_straight;
	} else 
	{
		if (bullet_preset == firepattern.HOMING)
		{
			scale = 0.3;
			sprite_index = spr_fire_straight_enemy;
		}
		speed = bullet_spd;
	}
	image_xscale = scale - 0.1;
	image_yscale = scale + 0.1;
	image_angle = bullet_angle -90
	
	/*
	var bouncing = 0.1;
	image_xscale = random_range(scale - bouncing,scale + bouncing);
	image_yscale = random_range(scale - bouncing,scale + bouncing);
	*/
	
	/**/
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7D1D6AEE
else
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 412D2D13
	/// @DnDParent : 7D1D6AEE
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10) stop_at_pause()"
	/// @description Execute Code
	 stop_at_pause()
}