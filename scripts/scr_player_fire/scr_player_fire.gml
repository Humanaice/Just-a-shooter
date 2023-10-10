/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6FFFEAB3
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_player_fire"
function scr_player_fire() 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 78EF9393
	/// @DnDParent : 6FFFEAB3
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (playerfire) $(13_10){$(13_10)	if (player_bullet_cooldown[0] <= 0)$(13_10)	{$(13_10)		var _inst0 = instance_create_layer(x,bbox_top,"Layer_bullet",ds_fire_type_list[0]);$(13_10)		with(_inst0) $(13_10)			{$(13_10)				bullet_team = fireteam.ALLY;$(13_10)				bullet_angle = other.player_direction;$(13_10)				creator = o_Player$(13_10)				bullet_dmg = other.player_bullet_damage * other.player_bullet_damage_mult[0]$(13_10)			}$(13_10)		player_bullet_cooldown[0] = player_bullet_add_cooldown[0]$(13_10)	}else$(13_10)	{$(13_10)		player_bullet_cooldown[0] --;$(13_10)	}$(13_10)	$(13_10)	if (player_bullet_cooldown[1] <= 0)$(13_10)	{$(13_10)		var _inst0 = instance_create_layer(x,bbox_top,"Layer_bullet",ds_fire_type_list[1]);$(13_10)		with(_inst0) $(13_10)			{$(13_10)				bullet_team = fireteam.ALLY;$(13_10)				bullet_angle = other.player_direction;$(13_10)				creator = o_Player$(13_10)				bullet_dmg = other.player_bullet_damage * other.player_bullet_damage_mult[1]$(13_10)			}$(13_10)		player_bullet_cooldown[1] = player_bullet_add_cooldown[1]$(13_10)	}else$(13_10)	{$(13_10)		player_bullet_cooldown[1] --;$(13_10)	}$(13_10)	$(13_10)	if (player_bullet_cooldown[2] <= 0)$(13_10)	{$(13_10)		var _inst0 = instance_create_layer(x,bbox_top,"Layer_bullet",ds_fire_type_list[2]);$(13_10)		with(_inst0) $(13_10)			{$(13_10)				bullet_team = fireteam.ALLY;$(13_10)				bullet_angle = other.player_direction;$(13_10)				creator = o_Player$(13_10)				bullet_dmg = other.player_bullet_damage * other.player_bullet_damage_mult[2]$(13_10)			}$(13_10)		player_bullet_cooldown[2] = player_bullet_add_cooldown[2]$(13_10)	}else$(13_10)	{$(13_10)		player_bullet_cooldown[2] --;$(13_10)	}$(13_10)}$(13_10)$(13_10)if (player_fire_cool > 0) $(13_10){$(13_10)	player_fire_cool --;$(13_10)}$(13_10)"
	/// @description Execute Code
	if (playerfire) 
	{
		if (player_bullet_cooldown[0] <= 0)
		{
			var _inst0 = instance_create_layer(x,bbox_top,"Layer_bullet",ds_fire_type_list[0]);
			with(_inst0) 
				{
					bullet_team = fireteam.ALLY;
					bullet_angle = other.player_direction;
					creator = o_Player
					bullet_dmg = other.player_bullet_damage * other.player_bullet_damage_mult[0]
				}
			player_bullet_cooldown[0] = player_bullet_add_cooldown[0]
		}else
		{
			player_bullet_cooldown[0] --;
		}
		
		if (player_bullet_cooldown[1] <= 0)
		{
			var _inst0 = instance_create_layer(x,bbox_top,"Layer_bullet",ds_fire_type_list[1]);
			with(_inst0) 
				{
					bullet_team = fireteam.ALLY;
					bullet_angle = other.player_direction;
					creator = o_Player
					bullet_dmg = other.player_bullet_damage * other.player_bullet_damage_mult[1]
				}
			player_bullet_cooldown[1] = player_bullet_add_cooldown[1]
		}else
		{
			player_bullet_cooldown[1] --;
		}
		
		if (player_bullet_cooldown[2] <= 0)
		{
			var _inst0 = instance_create_layer(x,bbox_top,"Layer_bullet",ds_fire_type_list[2]);
			with(_inst0) 
				{
					bullet_team = fireteam.ALLY;
					bullet_angle = other.player_direction;
					creator = o_Player
					bullet_dmg = other.player_bullet_damage * other.player_bullet_damage_mult[2]
				}
			player_bullet_cooldown[2] = player_bullet_add_cooldown[2]
		}else
		{
			player_bullet_cooldown[2] --;
		}
	}
	
	if (player_fire_cool > 0) 
	{
		player_fire_cool --;
	}
}