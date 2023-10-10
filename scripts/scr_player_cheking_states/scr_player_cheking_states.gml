/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0B976574
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_player_cheking_states"
function scr_player_cheking_states() 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 202E92D5
	/// @DnDComment : States$(13_10)
	/// @DnDParent : 0B976574
	/// @DnDArgument : "code" "// Checking States$(13_10)if (hspd != 0) or (vspd != 0) $(13_10){$(13_10)	state = playerstate.MOVING;$(13_10)} else if (hspd == 0) and (vspd == 0) $(13_10){$(13_10)	state = playerstate.IDLE;$(13_10)}$(13_10)if (player_damaged)$(13_10){$(13_10)	state = playerstate.DAMAGED;$(13_10)}$(13_10)$(13_10)if (hpcurrent == 0) $(13_10){$(13_10)	state = playerstate.DEAD;$(13_10)}$(13_10)$(13_10)"
	// Checking States
	if (hspd != 0) or (vspd != 0) 
	{
		state = playerstate.MOVING;
	} else if (hspd == 0) and (vspd == 0) 
	{
		state = playerstate.IDLE;
	}
	if (player_damaged)
	{
		state = playerstate.DAMAGED;
	}
	
	if (hpcurrent == 0) 
	{
		state = playerstate.DEAD;
	}
}