/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 3A718271
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_enemy_dna_down"
function scr_enemy_dna_down() 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 451683E3
	/// @DnDParent : 3A718271
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var limit_short_x = 5$(13_10)var limit_long_x = 10$(13_10)enemy_hspd = enemy_hspd + facing_horizontal;$(13_10)if (enemy_hspd >= limit_short_x) or (enemy_hspd <= -limit_short_x)$(13_10){$(13_10)	enemy_hspd = enemy_hspd + (facing_horizontal/2)$(13_10)	if (enemy_hspd >= limit_long_x) or (enemy_hspd <= -limit_long_x)  $(13_10)	{$(13_10)		facing_horizontal *= -1;$(13_10)	}$(13_10)}"
	/// @description Execute Code
	var limit_short_x = 5
	var limit_long_x = 10
	enemy_hspd = enemy_hspd + facing_horizontal;
	if (enemy_hspd >= limit_short_x) or (enemy_hspd <= -limit_short_x)
	{
		enemy_hspd = enemy_hspd + (facing_horizontal/2)
		if (enemy_hspd >= limit_long_x) or (enemy_hspd <= -limit_long_x)  
		{
			facing_horizontal *= -1;
		}
	}

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 2192BDE9
	/// @DnDDisabled : 1
	/// @DnDParent : 3A718271
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)function enemy_dna_movement()$(13_10){$(13_10)	var limit_short_x = 5$(13_10)	var limit_long_x = 10$(13_10)	enemy_hspd = enemy_hspd + facing_horizontal;$(13_10)	if (enemy_hspd >= limit_short_x) or (enemy_hspd <= -limit_short_x)$(13_10)	{$(13_10)		enemy_hspd = enemy_hspd + (facing_horizontal/2)$(13_10)		if (enemy_hspd >= limit_long_x) or (enemy_hspd <= -limit_long_x)  $(13_10)		{$(13_10)			facing_horizontal *= -1;$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)function enemy_dna_movement_horizontal()$(13_10){$(13_10)	var limit_short_y = 5$(13_10)	var limit_long_y = 10$(13_10)	enemy_vspd = enemy_vspd + facing_horizontal;$(13_10)	enemy_hspd = 5$(13_10)	if (enemy_vspd >= limit_short_y) or (enemy_vspd <= -limit_short_y)$(13_10)	{$(13_10)		enemy_vspd = enemy_vspd + (facing_horizontal/2)$(13_10)		if (enemy_vspd >= limit_long_y) or (enemy_vspd <= -limit_long_y)  $(13_10)		{$(13_10)			facing_horizontal *= -1;$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)function teest()$(13_10){$(13_10)	enemy_vspd -= 1$(13_10)}$(13_10)$(13_10)$(13_10)"
}