/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 34102426
/// @DnDArgument : "var" "global.gamePaused"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "true"
if(!(global.gamePaused == true))
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 75A441D8
	/// @DnDParent : 34102426
	/// @DnDArgument : "code" "/// @What the player will do frame by frame$(13_10)$(13_10)//Get Input$(13_10)script_execute(scrPlayerMovement);$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
	/// @What the player will do frame by frame
	
	//Get Input
	script_execute(scrPlayerMovement);
}