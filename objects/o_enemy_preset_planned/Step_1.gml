/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 12479CB9
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)//var facing_horizontal = 1$(13_10)//var limit_short_x = 5$(13_10)//var limit_long_x = 10$(13_10)/*$(13_10)enemy_hspd = enemy_hspd + facing_horizontal;$(13_10)if (enemy_hspd >= limit_short_x) or (enemy_hspd <= -limit_short_x)$(13_10){$(13_10)	enemy_hspd = enemy_hspd + (facing_horizontal/2)$(13_10)	if (enemy_hspd >= limit_long_x) or (enemy_hspd <= -limit_long_x)  $(13_10)	{$(13_10)		facing_horizontal *= -1;$(13_10)	}$(13_10)}$(13_10)*/$(13_10)$(13_10)//enemy_dna_movement_horizontal()$(13_10)$(13_10)$(13_10)$(13_10)"
/// @description Execute Code
//var facing_horizontal = 1
//var limit_short_x = 5
//var limit_long_x = 10
/*
enemy_hspd = enemy_hspd + facing_horizontal;
if (enemy_hspd >= limit_short_x) or (enemy_hspd <= -limit_short_x)
{
	enemy_hspd = enemy_hspd + (facing_horizontal/2)
	if (enemy_hspd >= limit_long_x) or (enemy_hspd <= -limit_long_x)  
	{
		facing_horizontal *= -1;
	}
}
*/

//enemy_dna_movement_horizontal()



/**/

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 717D86E0
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)script_execute(mov_function)"
/// @description Execute Code
script_execute(mov_function)