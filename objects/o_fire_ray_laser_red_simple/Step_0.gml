/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 2AF3D2BD
event_inherited();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 529DB90C
/// @DnDArgument : "var" "global.gamePaused"
/// @DnDArgument : "value" "false"
if(global.gamePaused == false)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 62878F3B
	/// @DnDParent : 529DB90C
	/// @DnDArgument : "code" "$(13_10)if (go_with)$(13_10){$(13_10)	if (bullet_team == fireteam.ALLY)$(13_10)	{$(13_10)		$(13_10)		if (instance_exists(o_Player))$(13_10)		{$(13_10)			Xplayer = o_Player.x$(13_10)			Yplayer = o_Player.y$(13_10)			x=Xplayer$(13_10)			y=Yplayer$(13_10)		} else$(13_10)		{$(13_10)			x=x$(13_10)			y=y$(13_10)		}$(13_10)	}$(13_10)	if (bullet_team == fireteam.ENEMY)$(13_10)	{$(13_10)		if (instance_exists(creator))$(13_10)		{$(13_10)			//Xenemy = enemy_id.x$(13_10)			//Yenemy = enemy_id.y$(13_10)			x = creator.x$(13_10)			y = creator.y$(13_10)		} else$(13_10)		{$(13_10)			x=x$(13_10)			y=y$(13_10)		}$(13_10)	}$(13_10)} else$(13_10){$(13_10)	x = x$(13_10)	y = y$(13_10)}$(13_10)//bullet_angle +=1$(13_10)direction = bullet_angle$(13_10)image_angle = direction$(13_10)if (image_index > 9)$(13_10){$(13_10)	image_speed = 0;$(13_10)	image_flicker = true;$(13_10)	$(13_10)}$(13_10)if (image_index > 3)$(13_10){$(13_10)	can_damage_player = true;$(13_10)} else$(13_10){$(13_10)	can_damage_player = false$(13_10)}$(13_10)$(13_10)if (image_flicker)$(13_10){$(13_10)	scale_y = random_range(0.45,0.55)$(13_10)}$(13_10)if (bullet_team == fireteam.ALLY)$(13_10){$(13_10)	if (stop_firing)$(13_10)	{$(13_10)		if (image_index > 3)$(13_10)		{$(13_10)			//o_Player.player_fire_cool = o_Player.player_fire_very_long_cool$(13_10)			image_speed = -1;$(13_10)			if (image_index <= 4)$(13_10)			{$(13_10)				if (bullet_type == 0)$(13_10)				{$(13_10)					o_Player.player_fire_cool = o_Player.player_fire_medium_cool$(13_10)				}$(13_10)				if (bullet_type == 2)$(13_10)				{$(13_10)					o_Player.player_fire_cool = o_Player.player_fire_long_cool$(13_10)					$(13_10)					$(13_10)				}$(13_10)				o_Player.can_move = true;$(13_10)				instance_destroy()$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)	time_active -= 1;$(13_10)	if (bullet_type == 0)$(13_10)	{$(13_10)		if (time_active <= 0) or (o_Player.stopplayerfire)$(13_10)		{$(13_10)			stop_firing = true;$(13_10)		}$(13_10)	}else if (bullet_type == 1)$(13_10)	{$(13_10)		stop_firing = true;$(13_10)	}else if (bullet_type == 2)$(13_10)	{$(13_10)		with(o_Player)$(13_10)		{$(13_10)			vspd -= 1$(13_10)			if(vspd < -15) vsp = -15;$(13_10)			can_move = false;$(13_10)			can_damage_player = false;$(13_10)		}$(13_10)		if (time_active <= 0)$(13_10)		{$(13_10)			stop_firing = true;$(13_10)			o_Player.can_move = true;$(13_10)		}$(13_10)	}$(13_10)	$(13_10)} else if (bullet_team == fireteam.ENEMY)$(13_10){$(13_10)	if (stop_firing)$(13_10)	{$(13_10)		if (image_index > 3)$(13_10)		{$(13_10)			image_speed = -1;$(13_10)			if (image_index <= 4)$(13_10)			{$(13_10)				instance_destroy()$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)	time_active -= 1;$(13_10)	if (bullet_type == 0)$(13_10)	{$(13_10)		if (time_active <= 0) $(13_10)		{$(13_10)			stop_firing = true;$(13_10)		}$(13_10)	}else if (bullet_type == 2)$(13_10)	{$(13_10)		with(enemy_id)$(13_10)		{$(13_10)			vspd += 1$(13_10)			if(vspd > 15) vsp = 15;$(13_10)		}$(13_10)		if (time_active <= 0)$(13_10)		{$(13_10)			stop_firing = true;$(13_10)		}$(13_10)	}$(13_10)	$(13_10)}$(13_10)mask_index = spr_fire_raylaser_collision$(13_10)$(13_10)"
	
	if (go_with)
	{
		if (bullet_team == fireteam.ALLY)
		{
			
			if (instance_exists(o_Player))
			{
				Xplayer = o_Player.x
				Yplayer = o_Player.y
				x=Xplayer
				y=Yplayer
			} else
			{
				x=x
				y=y
			}
		}
		if (bullet_team == fireteam.ENEMY)
		{
			if (instance_exists(creator))
			{
				//Xenemy = enemy_id.x
				//Yenemy = enemy_id.y
				x = creator.x
				y = creator.y
			} else
			{
				x=x
				y=y
			}
		}
	} else
	{
		x = x
		y = y
	}
	//bullet_angle +=1
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
					if (bullet_type == 0)
					{
						o_Player.player_fire_cool = o_Player.player_fire_medium_cool
					}
					if (bullet_type == 2)
					{
						o_Player.player_fire_cool = o_Player.player_fire_long_cool
						
						
					}
					o_Player.can_move = true;
					instance_destroy()
				}
			}
		}
		time_active -= 1;
		if (bullet_type == 0)
		{
			if (time_active <= 0) or (o_Player.stopplayerfire)
			{
				stop_firing = true;
			}
		}else if (bullet_type == 1)
		{
			stop_firing = true;
		}else if (bullet_type == 2)
		{
			with(o_Player)
			{
				vspd -= 1
				if(vspd < -15) vsp = -15;
				can_move = false;
				can_damage_player = false;
			}
			if (time_active <= 0)
			{
				stop_firing = true;
				o_Player.can_move = true;
			}
		}
		
	} else if (bullet_team == fireteam.ENEMY)
	{
		if (stop_firing)
		{
			if (image_index > 3)
			{
				image_speed = -1;
				if (image_index <= 4)
				{
					instance_destroy()
				}
			}
		}
		time_active -= 1;
		if (bullet_type == 0)
		{
			if (time_active <= 0) 
			{
				stop_firing = true;
			}
		}else if (bullet_type == 2)
		{
			with(enemy_id)
			{
				vspd += 1
				if(vspd > 15) vsp = 15;
			}
			if (time_active <= 0)
			{
				stop_firing = true;
			}
		}
		
	}
	mask_index = spr_fire_raylaser_collision
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0D0149A3
else
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 097B4235
	/// @DnDParent : 0D0149A3
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10) stop_at_pause()"
	/// @description Execute Code
	 stop_at_pause()
}