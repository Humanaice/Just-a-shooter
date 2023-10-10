/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 07440F67
/// @DnDArgument : "script" "scr_player_overall"
/// @DnDSaveInfo : "script" "scr_player_overall"
script_execute(scr_player_overall);

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 4264EFAC
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "state"
/// @DnDAction : YoYo Games.Switch.Case
/// @DnDVersion : 1
/// @DnDHash : 7DD8CB42
/// @DnDDisabled : 1
/// @DnDParent : 4264EFAC
/// @DnDArgument : "const" "playerstate.IDLE"
/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 1ADD3174
/// @DnDDisabled : 1
/// @DnDParent : 7DD8CB42
/// @DnDArgument : "script" "scr_player_overall"
/// @DnDSaveInfo : "script" "scr_player_overall"

/// @DnDAction : YoYo Games.Switch.Case
/// @DnDVersion : 1
/// @DnDHash : 5AF064BF
/// @DnDDisabled : 1
/// @DnDParent : 4264EFAC
/// @DnDArgument : "const" "playerstate.MOVING"
/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 0712FD3F
/// @DnDDisabled : 1
/// @DnDParent : 5AF064BF
/// @DnDArgument : "script" "scr_player_overall"
/// @DnDSaveInfo : "script" "scr_player_overall"

/// @DnDAction : YoYo Games.Switch.Case
/// @DnDVersion : 1
/// @DnDHash : 7EDC561F
/// @DnDDisabled : 1
/// @DnDParent : 4264EFAC
/// @DnDArgument : "const" "playerstate.DASHING"
/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 3F2EBFFF
/// @DnDDisabled : 1
/// @DnDParent : 7EDC561F
/// @DnDArgument : "script" "scr_player_overall"
/// @DnDSaveInfo : "script" "scr_player_overall"

/// @DnDAction : YoYo Games.Switch.Case
/// @DnDVersion : 1
/// @DnDHash : 16F74CF1
/// @DnDDisabled : 1
/// @DnDParent : 4264EFAC
/// @DnDArgument : "const" "playerstate.DEAD"
/// @DnDAction : YoYo Games.Common.Exit_Event
/// @DnDVersion : 1
/// @DnDHash : 0194FA0A
/// @DnDDisabled : 1
/// @DnDParent : 16F74CF1