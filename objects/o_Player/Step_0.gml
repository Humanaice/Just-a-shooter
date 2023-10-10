/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 07440F67
/// @DnDDisabled : 1
/// @DnDArgument : "script" "scr_player_overall"
/// @DnDSaveInfo : "script" "scr_player_overall"


/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1DBED68A
/// @DnDArgument : "var" "global.gamePaused"
/// @DnDArgument : "value" "false"
if(global.gamePaused == false)
{
	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 4264EFAC
	/// @DnDParent : 1DBED68A
	/// @DnDArgument : "expr" "state"
	var l4264EFAC_0 = state;
	switch(l4264EFAC_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 7DD8CB42
		/// @DnDParent : 4264EFAC
		/// @DnDArgument : "const" "playerstate.IDLE"
		case playerstate.IDLE:
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 0B53FF6B
			/// @DnDParent : 7DD8CB42
			/// @DnDArgument : "script" "scr_player_cheking_states"
			/// @DnDSaveInfo : "script" "scr_player_cheking_states"
			script_execute(scr_player_cheking_states);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 1ADD3174
			/// @DnDParent : 7DD8CB42
			/// @DnDArgument : "script" "scr_player_movement"
			/// @DnDSaveInfo : "script" "scr_player_movement"
			script_execute(scr_player_movement);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 6DCC41CD
			/// @DnDParent : 7DD8CB42
			/// @DnDArgument : "script" "scr_player_collision_xy"
			/// @DnDSaveInfo : "script" "scr_player_collision_xy"
			script_execute(scr_player_collision_xy);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 0B322D92
			/// @DnDParent : 7DD8CB42
			/// @DnDArgument : "script" "scr_player_fire"
			/// @DnDSaveInfo : "script" "scr_player_fire"
			script_execute(scr_player_fire);
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 5AF064BF
		/// @DnDParent : 4264EFAC
		/// @DnDArgument : "const" "playerstate.MOVING"
		case playerstate.MOVING:
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 1AC0C91D
			/// @DnDParent : 5AF064BF
			/// @DnDArgument : "script" "scr_player_cheking_states"
			/// @DnDSaveInfo : "script" "scr_player_cheking_states"
			script_execute(scr_player_cheking_states);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 0CD74F5B
			/// @DnDParent : 5AF064BF
			/// @DnDArgument : "script" "scr_player_movement"
			/// @DnDSaveInfo : "script" "scr_player_movement"
			script_execute(scr_player_movement);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 4CA42404
			/// @DnDParent : 5AF064BF
			/// @DnDArgument : "script" "scr_player_collision_xy"
			/// @DnDSaveInfo : "script" "scr_player_collision_xy"
			script_execute(scr_player_collision_xy);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 09F743C2
			/// @DnDParent : 5AF064BF
			/// @DnDArgument : "script" "scr_player_fire"
			/// @DnDSaveInfo : "script" "scr_player_fire"
			script_execute(scr_player_fire);
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 7EDC561F
		/// @DnDDisabled : 1
		/// @DnDParent : 4264EFAC
		/// @DnDArgument : "const" "playerstate.DASHING"
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 21D4684B
		/// @DnDDisabled : 1
		/// @DnDParent : 7EDC561F
		/// @DnDArgument : "script" "scr_player_cheking_states"
		/// @DnDSaveInfo : "script" "scr_player_cheking_states"
		
		
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 7EA12F26
		/// @DnDDisabled : 1
		/// @DnDParent : 7EDC561F
		/// @DnDArgument : "script" "scr_player_movement"
		/// @DnDSaveInfo : "script" "scr_player_movement"
		
		
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 2C873E3A
		/// @DnDDisabled : 1
		/// @DnDParent : 7EDC561F
		/// @DnDArgument : "script" "scr_player_collision_xy"
		/// @DnDSaveInfo : "script" "scr_player_collision_xy"
		
		
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 1D81A9AE
		/// @DnDDisabled : 1
		/// @DnDParent : 7EDC561F
		/// @DnDArgument : "script" "scr_player_fire"
		/// @DnDSaveInfo : "script" "scr_player_fire"
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 724E9446
		/// @DnDParent : 4264EFAC
		/// @DnDArgument : "const" "playerstate.DAMAGED"
		case playerstate.DAMAGED:
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 45F762F8
			/// @DnDParent : 724E9446
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "blink"
			blink = true;
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 4CD9524A
			/// @DnDParent : 724E9446
			/// @DnDArgument : "script" "scr_player_cheking_states"
			/// @DnDSaveInfo : "script" "scr_player_cheking_states"
			script_execute(scr_player_cheking_states);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 0D982FC0
			/// @DnDParent : 724E9446
			/// @DnDArgument : "script" "scr_player_movement"
			/// @DnDSaveInfo : "script" "scr_player_movement"
			script_execute(scr_player_movement);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 7A409E77
			/// @DnDParent : 724E9446
			/// @DnDArgument : "script" "scr_player_collision_xy"
			/// @DnDSaveInfo : "script" "scr_player_collision_xy"
			script_execute(scr_player_collision_xy);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 386E87FE
			/// @DnDParent : 724E9446
			/// @DnDArgument : "script" "scr_player_fire"
			/// @DnDSaveInfo : "script" "scr_player_fire"
			script_execute(scr_player_fire);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3B0D313B
			/// @DnDParent : 724E9446
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "can_damage_player"
			can_damage_player = false;
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 73769A2A
			/// @DnDParent : 724E9446
			/// @DnDArgument : "script" "scr_player_damaged"
			/// @DnDSaveInfo : "script" "scr_player_damaged"
			script_execute(scr_player_damaged);
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 16F74CF1
		/// @DnDParent : 4264EFAC
		/// @DnDArgument : "const" "playerstate.DEAD"
		case playerstate.DEAD:
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 67B97277
			/// @DnDParent : 16F74CF1
			/// @DnDArgument : "script" "scr_player_cheking_states"
			/// @DnDSaveInfo : "script" "scr_player_cheking_states"
			script_execute(scr_player_cheking_states);
		
			/// @DnDAction : YoYo Games.Common.Exit_Event
			/// @DnDVersion : 1
			/// @DnDHash : 0194FA0A
			/// @DnDParent : 16F74CF1
			exit;
			break;
	}
}