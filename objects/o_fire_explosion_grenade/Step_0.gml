/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 6C3F827B
event_inherited();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 17F37D2C
/// @DnDArgument : "var" "global.gamePaused"
/// @DnDArgument : "value" "false"
if(global.gamePaused == false)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 74588212
	/// @DnDParent : 17F37D2C
	/// @DnDArgument : "code" "var bouncing = 0.1;$(13_10)direction = bullet_angle;$(13_10)//image_angle += 5;$(13_10)if (bullet_team == fireteam.ALLY)$(13_10){$(13_10)	if (y <= (initial_y + limit_y)) $(13_10)	{$(13_10)		speed += -0.2$(13_10)		bouncing +=0.2$(13_10)		image_speed += 1;$(13_10)		if (speed <= 3)$(13_10)		{$(13_10)			instance_destroy()$(13_10)		}$(13_10)	} else {$(13_10)		speed = bullet_spd;$(13_10)	}$(13_10)	sprite_index = spr_fire_ball_grenade_player;$(13_10)} else if (bullet_team == fireteam.ENEMY)$(13_10){$(13_10)	if (y >= (initial_y + -limit_y)) $(13_10)	{$(13_10)		speed += -0.2$(13_10)		bouncing +=0.2$(13_10)		image_speed += 1;$(13_10)		if (speed <= 3)$(13_10)		{$(13_10)			instance_destroy()$(13_10)		}$(13_10)	} else {$(13_10)		speed = bullet_spd;$(13_10)	}$(13_10)	sprite_index = spr_fire_ball_grenade_enemy;$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)image_xscale = random_range(scale - bouncing,scale + bouncing);$(13_10)image_yscale = random_range(scale - bouncing,scale + bouncing);"
	var bouncing = 0.1;
	direction = bullet_angle;
	//image_angle += 5;
	if (bullet_team == fireteam.ALLY)
	{
		if (y <= (initial_y + limit_y)) 
		{
			speed += -0.2
			bouncing +=0.2
			image_speed += 1;
			if (speed <= 3)
			{
				instance_destroy()
			}
		} else {
			speed = bullet_spd;
		}
		sprite_index = spr_fire_ball_grenade_player;
	} else if (bullet_team == fireteam.ENEMY)
	{
		if (y >= (initial_y + -limit_y)) 
		{
			speed += -0.2
			bouncing +=0.2
			image_speed += 1;
			if (speed <= 3)
			{
				instance_destroy()
			}
		} else {
			speed = bullet_spd;
		}
		sprite_index = spr_fire_ball_grenade_enemy;
	}
	
	
	
	image_xscale = random_range(scale - bouncing,scale + bouncing);
	image_yscale = random_range(scale - bouncing,scale + bouncing);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7C480FFD
else
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 39356297
	/// @DnDParent : 7C480FFD
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10) stop_at_pause()"
	/// @description Execute Code
	 stop_at_pause()
}