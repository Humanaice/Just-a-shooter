/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 7AB8C6E9
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scrMacrosEnums"
function scrMacrosEnums() 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 191EE1F0
	/// @DnDParent : 7AB8C6E9
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)#macro FRAME_RATE 60$(13_10)#macro ROOM_START rmLevel1"
	/// @description Execute Code
	#macro FRAME_RATE 60
	#macro ROOM_START rmLevel1

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 7FCCFEBD
	/// @DnDParent : 7AB8C6E9
	/// @DnDArgument : "code" "///// @description Execute Code$(13_10)///// Enums$(13_10)////States$(13_10)$(13_10)//enum playerstate {$(13_10)//	IDLE,$(13_10)//	MOVING,$(13_10)//	DASHING,$(13_10)//	DAMAGED,$(13_10)//	DEAD,$(13_10)//}$(13_10)$(13_10)//enum enemystate	$(13_10)//{$(13_10)//	ENTERING,$(13_10)//	SHOTTING,$(13_10)//	FLEEING,$(13_10)//	MOVING,$(13_10)	$(13_10)//}$(13_10)$(13_10)//enum enemyenteringstate$(13_10)//{$(13_10)//	LIGHTSPEED,$(13_10)//	COMEANDGO,$(13_10)//	TRESPASSING,$(13_10)//	PLANNED$(13_10)//}$(13_10)////Free flow = true + entrance_path = true --> enter with path and continuos on - Light speed$(13_10)////Free flow = false + entrance_path = true --> enter with path leaves with path - Come and go$(13_10)////Free flow = true + entrance_path = false --> enter with free flow and continuos on - Tresspassing$(13_10)////Free flow = false + entrance_path = false --> enter with preformed path and never stops - Planed$(13_10)$(13_10)//enum firetype {$(13_10)//	STRAIGHT,$(13_10)//	BIG_STRAIGHT,$(13_10)//	SEQUENCE,$(13_10)//	BALL,$(13_10)//	TRIPLE_BALL,$(13_10)//	GRANADE,$(13_10)//	BALL_GRANADE,$(13_10)//	BOMERANG,$(13_10)//	DNA,$(13_10)//	HOMING,$(13_10)//	TOTAL,$(13_10)//}$(13_10)$(13_10)enum fireTeam {$(13_10)	ALLY,$(13_10)	ENEMY,$(13_10)	NOONE$(13_10)}$(13_10)$(13_10)//enum firepattern $(13_10)//{$(13_10)//	IN_LINE,$(13_10)//	HOMING,$(13_10)//	PRESET,$(13_10)//}$(13_10)"
	///// @description Execute Code
	///// Enums
	////States
	
	//enum playerstate {
	//	IDLE,
	//	MOVING,
	//	DASHING,
	//	DAMAGED,
	//	DEAD,
	//}
	
	//enum enemystate	
	//{
	//	ENTERING,
	//	SHOTTING,
	//	FLEEING,
	//	MOVING,
		
	//}
	
	//enum enemyenteringstate
	//{
	//	LIGHTSPEED,
	//	COMEANDGO,
	//	TRESPASSING,
	//	PLANNED
	//}
	////Free flow = true + entrance_path = true --> enter with path and continuos on - Light speed
	////Free flow = false + entrance_path = true --> enter with path leaves with path - Come and go
	////Free flow = true + entrance_path = false --> enter with free flow and continuos on - Tresspassing
	////Free flow = false + entrance_path = false --> enter with preformed path and never stops - Planed
	
	//enum firetype {
	//	STRAIGHT,
	//	BIG_STRAIGHT,
	//	SEQUENCE,
	//	BALL,
	//	TRIPLE_BALL,
	//	GRANADE,
	//	BALL_GRANADE,
	//	BOMERANG,
	//	DNA,
	//	HOMING,
	//	TOTAL,
	//}
	
	enum fireTeam {
		ALLY,
		ENEMY,
		NOONE
	}
	
	//enum firepattern 
	//{
	//	IN_LINE,
	//	HOMING,
	//	PRESET,
	//}
}