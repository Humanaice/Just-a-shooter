/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 73067D28
/// @DnDDisabled : 1
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)global.midTransition = false;$(13_10)global.roomTarget = -1;$(13_10)$(13_10)$(13_10)function TransitionPlaceSequence(_type)$(13_10){$(13_10)	if (layer_exists("transition")) layer_destroy("transition");$(13_10)	var _lay = layer_create(-9999,"transition");$(13_10)	layer_sequence_create(_lay,0,0,_type)$(13_10)}$(13_10)$(13_10)function TransitionStart (_roomTarget,_typeOut,_typeIn)$(13_10){$(13_10)	if (!global.midTransition)$(13_10)	{$(13_10)		global.midTransition = true;$(13_10)		global.roomTarget = _roomTarget;$(13_10)		TransitionPlaceSequence(_typeOut)$(13_10)		layer_set_target_room(_roomTarget)$(13_10)		TransitionPlaceSequence(_typeIn)$(13_10)		layer_reset_target_room();$(13_10)		return true;$(13_10)		$(13_10)	}$(13_10)	else return false$(13_10)}$(13_10)$(13_10)function TransitionChangeRoom()$(13_10){$(13_10)	room_goto(global.roomTarget)$(13_10)}$(13_10)$(13_10)function TransitionFinished()$(13_10){$(13_10)	layer_sequence_destroy(self.elementID);$(13_10)	global.midTransition = false;$(13_10)}$(13_10)$(13_10)$(13_10)"