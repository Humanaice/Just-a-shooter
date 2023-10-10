/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1CD30631
/// @DnDDisabled : 1
/// @DnDArgument : "var" "global.gamePaused"
/// @DnDArgument : "value" "true"
/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 26C28D3C
/// @DnDDisabled : 1
/// @DnDParent : 1CD30631
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)instance_deactivate_object(self)"

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 245A82E4
/// @DnDDisabled : 1
/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6F644FDF
/// @DnDDisabled : 1
/// @DnDParent : 245A82E4
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)instance_activate_object(self)$(13_10)//instance$(13_10)"