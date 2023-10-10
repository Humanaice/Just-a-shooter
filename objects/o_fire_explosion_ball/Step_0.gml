/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 50710645
event_inherited();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 092DE0C0
/// @DnDArgument : "var" "global.gamePaused"
/// @DnDArgument : "value" "false"
if(global.gamePaused == false)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 0F4405F3
	/// @DnDParent : 092DE0C0
	/// @DnDArgument : "code" "var bouncing = 0.1;$(13_10)$(13_10)//image_angle += 5;$(13_10)if (bullet_team == fireteam.ALLY)$(13_10){$(13_10)	direction = bullet_angle;$(13_10)	if (y <= (initial_y + limit_y)) $(13_10)	{$(13_10)		path_orientation = bullet_angle - 90$(13_10)		image_speed += 1;$(13_10)		if (play_once)$(13_10)		{$(13_10)			path_start(pth_explosion_ball,10,path_action_stop,false)$(13_10)			play_once = false$(13_10)		}$(13_10)		if (path_position >= 1)$(13_10)		{$(13_10)			instance_destroy()$(13_10)		}$(13_10)	} $(13_10)	else $(13_10)	{$(13_10)		speed = bullet_spd;$(13_10)	}$(13_10)	sprite_index = spr_fire_ball_explosion_player;$(13_10)}$(13_10)else if (bullet_team == fireteam.ENEMY)$(13_10){$(13_10)	direction = bullet_angle;$(13_10)	$(13_10)	sprite_index = spr_fire_ball_explosion_enemy;$(13_10)	image_speed += 1;$(13_10)	path_orientation = bullet_angle - 90$(13_10)		if (play_once)$(13_10)		{$(13_10)			path_start(pth_explosion_ball,10,path_action_stop,false)$(13_10)			play_once = false$(13_10)		}$(13_10)		if (path_position >= 1)$(13_10)		{$(13_10)			instance_destroy()$(13_10)		}$(13_10)	$(13_10)}$(13_10)$(13_10)$(13_10)image_xscale = random_range(scale - bouncing,scale + bouncing);$(13_10)image_yscale = random_range(scale - bouncing,scale + bouncing);"
	var bouncing = 0.1;
	
	//image_angle += 5;
	if (bullet_team == fireteam.ALLY)
	{
		direction = bullet_angle;
		if (y <= (initial_y + limit_y)) 
		{
			path_orientation = bullet_angle - 90
			image_speed += 1;
			if (play_once)
			{
				path_start(pth_explosion_ball,10,path_action_stop,false)
				play_once = false
			}
			if (path_position >= 1)
			{
				instance_destroy()
			}
		} 
		else 
		{
			speed = bullet_spd;
		}
		sprite_index = spr_fire_ball_explosion_player;
	}
	else if (bullet_team == fireteam.ENEMY)
	{
		direction = bullet_angle;
		
		sprite_index = spr_fire_ball_explosion_enemy;
		image_speed += 1;
		path_orientation = bullet_angle - 90
			if (play_once)
			{
				path_start(pth_explosion_ball,10,path_action_stop,false)
				play_once = false
			}
			if (path_position >= 1)
			{
				instance_destroy()
			}
		
	}
	
	
	image_xscale = random_range(scale - bouncing,scale + bouncing);
	image_yscale = random_range(scale - bouncing,scale + bouncing);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6DC99F88
else
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 4545DE2C
	/// @DnDParent : 6DC99F88
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10) stop_at_pause()"
	/// @description Execute Code
	 stop_at_pause()
}