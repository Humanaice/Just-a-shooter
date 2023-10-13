/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5DAE19CB
/// @DnDArgument : "var" "global.gamePaused"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "true"
if(!(global.gamePaused == true))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4645AE7A
	/// @DnDParent : 5DAE19CB
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "global.gamePaused"
	global.gamePaused = true;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 2718E809
	/// @DnDApplyTo : {oGUI}
	/// @DnDParent : 5DAE19CB
	/// @DnDArgument : "function" "Screenshot"
	with(oGUI) {
		Screenshot();
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 59528226
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5BDD743A
	/// @DnDParent : 59528226
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "global.gamePaused"
	global.gamePaused = false;
}