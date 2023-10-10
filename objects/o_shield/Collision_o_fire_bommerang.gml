/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3AECF060
/// @DnDArgument : "var" "other.bullet_team"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "fireteam.ALLY"
if(!(other.bullet_team == fireteam.ALLY))
{
	/// @DnDAction : YoYo Games.Paths.Stop_Path
	/// @DnDVersion : 1
	/// @DnDHash : 7F7080F7
	/// @DnDApplyTo : other
	/// @DnDParent : 3AECF060
	with(other) path_end();

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3ACE9188
	/// @DnDApplyTo : other
	/// @DnDParent : 3AECF060
	/// @DnDArgument : "expr" "bullet_spd/2"
	/// @DnDArgument : "var" "bullet_spd"
	with(other) {
	bullet_spd = bullet_spd/2;
	
	}
}