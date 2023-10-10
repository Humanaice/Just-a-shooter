/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 2D3B6E09
event_inherited();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1C08CFFD
/// @DnDArgument : "var" "global.gamePaused"
/// @DnDArgument : "value" "false"
if(global.gamePaused == false)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 4135568C
	/// @DnDParent : 1C08CFFD
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)image_angle = direction - 90$(13_10)path_speed = pth_speed_fast$(13_10)$(13_10)switch enemy_state$(13_10){$(13_10)	case enemystate.ENTERING:$(13_10)	$(13_10)		if (path_position >= 1)$(13_10)		{$(13_10)			enemy_state = enemystate.MOVING;$(13_10)			//enemy_state = enemystate.ENTERING$(13_10)		} else$(13_10)		{$(13_10)			enemy_state = enemystate.ENTERING$(13_10)		}$(13_10)		$(13_10)	break;$(13_10)	$(13_10)	case enemystate.MOVING:$(13_10)	$(13_10)		if (!infy_path)$(13_10)		{$(13_10)			y += enemy_vspd$(13_10)			x += enemy_hspd		$(13_10)		}else$(13_10)		{$(13_10)			if(can_start_path)$(13_10)			{$(13_10)				path_start(infy_path_choose,pth_speed_slow,path_action_restart,false)$(13_10)				can_start_path = false$(13_10)			}else$(13_10)			{$(13_10)				path_speed = pth_speed_fast * 0.7$(13_10)				direction = -90$(13_10)				image_angle = direction - 90$(13_10)			}$(13_10)		}$(13_10)						$(13_10)		if (can_shoot)$(13_10)		{$(13_10)			if (shoot_once)$(13_10)			{$(13_10)				if (cool_fire <= 0)$(13_10)				{$(13_10)					script_execute(scr_fire_enemy_bullet)$(13_10)					can_shoot = false$(13_10)				}$(13_10)			} else$(13_10)			{$(13_10)				if (cool_fire <= 0)$(13_10)				{$(13_10)					script_execute(scr_fire_enemy_bullet)$(13_10)					cool_fire = cooldown$(13_10)				}$(13_10)				cool_fire -= 1;$(13_10)			}$(13_10)		}$(13_10)		break$(13_10)	$(13_10)}$(13_10)	$(13_10)	$(13_10)$(13_10)$(13_10)$(13_10)"
	/// @description Execute Code
	
	image_angle = direction - 90
	path_speed = pth_speed_fast
	
	switch enemy_state
	{
		case enemystate.ENTERING:
		
			if (path_position >= 1)
			{
				enemy_state = enemystate.MOVING;
				//enemy_state = enemystate.ENTERING
			} else
			{
				enemy_state = enemystate.ENTERING
			}
			
		break;
		
		case enemystate.MOVING:
		
			if (!infy_path)
			{
				y += enemy_vspd
				x += enemy_hspd		
			}else
			{
				if(can_start_path)
				{
					path_start(infy_path_choose,pth_speed_slow,path_action_restart,false)
					can_start_path = false
				}else
				{
					path_speed = pth_speed_fast * 0.7
					direction = -90
					image_angle = direction - 90
				}
			}
							
			if (can_shoot)
			{
				if (shoot_once)
				{
					if (cool_fire <= 0)
					{
						script_execute(scr_fire_enemy_bullet)
						can_shoot = false
					}
				} else
				{
					if (cool_fire <= 0)
					{
						script_execute(scr_fire_enemy_bullet)
						cool_fire = cooldown
					}
					cool_fire -= 1;
				}
			}
			break
		
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2A135033
else
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 078699DF
	/// @DnDParent : 2A135033
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10) stop_at_pause()"
	/// @description Execute Code
	 stop_at_pause()
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 79A6283A
/// @DnDDisabled : 1
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)image_angle = direction - 90$(13_10)$(13_10)$(13_10)switch enemy_state$(13_10){$(13_10)	case enemystate.ENTERING:$(13_10)	{$(13_10)		if (free_flow)$(13_10)		{$(13_10)			enemy_state = enemystate.MOVING;$(13_10)		} $(13_10)		$(13_10)		break;$(13_10)	}$(13_10)	case enemystate.MOVING:$(13_10)	{$(13_10)		if (shoot_once)$(13_10)		{$(13_10)			if (cool_fire <= 0)$(13_10)			{$(13_10)					$(13_10)				_inst = instance_create_layer(x,y,"Layer_bullet",fire_type);$(13_10)				with (_inst)$(13_10)					{$(13_10)						bullet_team = fireteam.ENEMY;$(13_10)				 		bullet_sprite = spr_fire_ball_enemy$(13_10)						creator = other.id$(13_10)					}$(13_10)				enemy_state = enemystate.FLEEING;$(13_10)			}$(13_10)			cool_fire -= 1;$(13_10)		} else $(13_10)		{$(13_10)			y += enemy_vspd$(13_10)			x += enemy_hspd$(13_10)			if (cool_fire <= 0)$(13_10)			{$(13_10)				_inst = instance_create_layer(x,y,"Layer_bullet",fire_type);$(13_10)				with (_inst)$(13_10)					{$(13_10)						bullet_team = fireteam.ENEMY;$(13_10)				 		bullet_sprite = spr_fire_ball_enemy$(13_10)						creator = other.id$(13_10)					} $(13_10)	$(13_10)				cool_fire = cooldown$(13_10)			}$(13_10)			cool_fire -= 1;$(13_10)		}$(13_10)		break;$(13_10)	}$(13_10)	case enemystate.FLEEING:$(13_10)	{$(13_10)		if (time_to_move <= 0)$(13_10)		{$(13_10)			if (!instance_exists(_inst))$(13_10)			{$(13_10)				if (!go_at_once)$(13_10)				{$(13_10)					path_start(_outpath,15,path_action_stop,false)$(13_10)					go_at_once = true$(13_10)				} else $(13_10)				{ $(13_10)					if (path_position == 1)$(13_10)					{$(13_10)						instance_destroy()$(13_10)					}$(13_10)				}$(13_10)			}$(13_10)		}$(13_10)		time_to_move --;$(13_10)	}$(13_10)}$(13_10)$(13_10)if (can_shoot)$(13_10)		{$(13_10)			if (shoot_once)$(13_10)			{$(13_10)				if (cool_fire <= 0)$(13_10)				{$(13_10)					script_execute(scr_fire_enemy_bullet)$(13_10)					cool_fire = 9999999$(13_10)				}$(13_10)				cool_fire -= 1;$(13_10)			} else$(13_10)			{$(13_10)				if (cool_fire <= 0)$(13_10)				{$(13_10)					script_execute(scr_fire_enemy_bullet)$(13_10)					cool_fire = cooldown$(13_10)				}$(13_10)				cool_fire -= 1;$(13_10)			}$(13_10)		}$(13_10)		enemy_state = enemystate.FLEEING$(13_10)$(13_10)$(13_10)"