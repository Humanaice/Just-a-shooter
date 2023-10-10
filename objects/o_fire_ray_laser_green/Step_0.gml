/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 1C518DE1
event_inherited();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7D7D650E
/// @DnDArgument : "var" "global.gamePaused"
/// @DnDArgument : "value" "false"
if(global.gamePaused == false)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 62878F3B
	/// @DnDParent : 7D7D650E
	/// @DnDArgument : "code" "$(13_10)direction = bullet_angle$(13_10)image_angle = direction$(13_10)if (image_index > 9)$(13_10){$(13_10)	image_speed = 0;$(13_10)	image_flicker = true;$(13_10)	$(13_10)}$(13_10)if (image_index > 3)$(13_10){$(13_10)	can_damage_player = true;$(13_10)} else$(13_10){$(13_10)	can_damage_player = false$(13_10)}$(13_10)$(13_10)if (image_flicker)$(13_10){$(13_10)	scale_y = random_range(0.45,0.55)$(13_10)}$(13_10)if (bullet_team == fireteam.ALLY)$(13_10){$(13_10)	if (stop_firing)$(13_10)	{$(13_10)		if (image_index > 3)$(13_10)		{$(13_10)			//o_Player.player_fire_cool = o_Player.player_fire_very_long_cool$(13_10)			image_speed = -1;$(13_10)			if (image_index <= 4)$(13_10)			{$(13_10)				instance_destroy()$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)	time_active -= 1;$(13_10)$(13_10)	if (time_active <= 0)$(13_10)	{$(13_10)		stop_firing = true;$(13_10)	}$(13_10)		$(13_10)}$(13_10)mask_index = spr_fire_raylaser_collision$(13_10)$(13_10)"
	
	direction = bullet_angle
	image_angle = direction
	if (image_index > 9)
	{
		image_speed = 0;
		image_flicker = true;
		
	}
	if (image_index > 3)
	{
		can_damage_player = true;
	} else
	{
		can_damage_player = false
	}
	
	if (image_flicker)
	{
		scale_y = random_range(0.45,0.55)
	}
	if (bullet_team == fireteam.ALLY)
	{
		if (stop_firing)
		{
			if (image_index > 3)
			{
				//o_Player.player_fire_cool = o_Player.player_fire_very_long_cool
				image_speed = -1;
				if (image_index <= 4)
				{
					instance_destroy()
				}
			}
		}
		time_active -= 1;
	
		if (time_active <= 0)
		{
			stop_firing = true;
		}
			
	}
	mask_index = spr_fire_raylaser_collision
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0E76055E
else
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 0665011A
	/// @DnDParent : 0E76055E
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10) stop_at_pause()"
	/// @description Execute Code
	 stop_at_pause()
}