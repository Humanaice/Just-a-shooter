/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 383914C1
event_inherited();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3701621F
/// @DnDArgument : "var" "global.gamePaused"
/// @DnDArgument : "value" "false"
if(global.gamePaused == false)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 091B85D3
	/// @DnDParent : 3701621F
	/// @DnDArgument : "code" "if (bullet_team == fireteam.ALLY)$(13_10){$(13_10)	if (instance_exists(o_enemy_parent))$(13_10)	{$(13_10)		if ( distance_to_object(o_enemy_parent) < distance_scan_player)$(13_10)		{$(13_10)			var enemyNear = instance_nearest(x,y,o_enemy_parent)$(13_10)			if (time_to_follow > 0)$(13_10)			{$(13_10)				direction = angle_rotate(direction, point_direction(x, y, enemyNear.x, enemyNear.y), 5);$(13_10)				speed = bullet_spd$(13_10)				time_to_follow --;$(13_10)			} else if (time_to_follow <= 0)$(13_10)			{$(13_10)				speed = bullet_spd$(13_10)			}$(13_10)		} else $(13_10)		{$(13_10)			//direction = bullet_angle;$(13_10)			speed = bullet_spd$(13_10)		}$(13_10)		$(13_10)	} else if (!instance_exists(o_enemy_parent))$(13_10)	{$(13_10)		//direction = bullet_angle;$(13_10)		speed = bullet_spd$(13_10)	}$(13_10)} else if (bullet_team == fireteam.ENEMY)$(13_10){$(13_10)	if (instance_exists(o_Player))$(13_10)	{$(13_10)		if ( distance_to_object(o_Player) < 400)$(13_10)		{$(13_10)			if (time_to_follow > 0)$(13_10)			{$(13_10)				direction = angle_rotate(direction, point_direction(x, y, o_Player.x, o_Player.y), 3);$(13_10)				speed = bullet_spd_enemy$(13_10)				time_to_follow --;$(13_10)			} else if (time_to_follow <= 0)$(13_10)			{$(13_10)				speed = bullet_spd_enemy$(13_10)			}$(13_10)		} else $(13_10)		{$(13_10)			direction = bullet_angle;$(13_10)			speed = bullet_spd_enemy$(13_10)		}$(13_10)		$(13_10)	} else if (!instance_exists(o_Player))$(13_10)	{$(13_10)		direction = bullet_angle;$(13_10)		speed = bullet_spd_enemy$(13_10)	}$(13_10)}$(13_10)$(13_10)var bouncing = 0.1;$(13_10)image_xscale = random_range(scale - bouncing,scale + bouncing);$(13_10)image_yscale = random_range(scale - bouncing,scale + bouncing);$(13_10)image_angle += 10;$(13_10)$(13_10)if (bullet_team == fireteam.ALLY)$(13_10){$(13_10)	sprite_index = spr_fire_homing;$(13_10)} else $(13_10){$(13_10)	sprite_index = spr_fire_homing_enemy;$(13_10)}$(13_10)"
	if (bullet_team == fireteam.ALLY)
	{
		if (instance_exists(o_enemy_parent))
		{
			if ( distance_to_object(o_enemy_parent) < distance_scan_player)
			{
				var enemyNear = instance_nearest(x,y,o_enemy_parent)
				if (time_to_follow > 0)
				{
					direction = angle_rotate(direction, point_direction(x, y, enemyNear.x, enemyNear.y), 5);
					speed = bullet_spd
					time_to_follow --;
				} else if (time_to_follow <= 0)
				{
					speed = bullet_spd
				}
			} else 
			{
				//direction = bullet_angle;
				speed = bullet_spd
			}
			
		} else if (!instance_exists(o_enemy_parent))
		{
			//direction = bullet_angle;
			speed = bullet_spd
		}
	} else if (bullet_team == fireteam.ENEMY)
	{
		if (instance_exists(o_Player))
		{
			if ( distance_to_object(o_Player) < 400)
			{
				if (time_to_follow > 0)
				{
					direction = angle_rotate(direction, point_direction(x, y, o_Player.x, o_Player.y), 3);
					speed = bullet_spd_enemy
					time_to_follow --;
				} else if (time_to_follow <= 0)
				{
					speed = bullet_spd_enemy
				}
			} else 
			{
				direction = bullet_angle;
				speed = bullet_spd_enemy
			}
			
		} else if (!instance_exists(o_Player))
		{
			direction = bullet_angle;
			speed = bullet_spd_enemy
		}
	}
	
	var bouncing = 0.1;
	image_xscale = random_range(scale - bouncing,scale + bouncing);
	image_yscale = random_range(scale - bouncing,scale + bouncing);
	image_angle += 10;
	
	if (bullet_team == fireteam.ALLY)
	{
		sprite_index = spr_fire_homing;
	} else 
	{
		sprite_index = spr_fire_homing_enemy;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 77932641
else
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 6AA965EE
	/// @DnDParent : 77932641
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10) stop_at_pause()"
	/// @description Execute Code
	 stop_at_pause()
}