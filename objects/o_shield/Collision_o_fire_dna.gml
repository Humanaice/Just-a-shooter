/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0C494680
/// @DnDArgument : "var" "other.bullet_team"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "fireteam.ALLY"
if(!(other.bullet_team == fireteam.ALLY))
{
	/// @DnDAction : YoYo Games.Paths.Stop_Path
	/// @DnDVersion : 1
	/// @DnDHash : 269983AA
	/// @DnDApplyTo : other
	/// @DnDParent : 0C494680
	with(other) path_end();
}