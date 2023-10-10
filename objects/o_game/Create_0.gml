/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 07EB8922
/// @DnDDisabled : 1
/// @DnDArgument : "code" "//States$(13_10)$(13_10)enum playerstate {$(13_10)	IDLE,$(13_10)	MOVING,$(13_10)	DASHING,$(13_10)	DAMAGED,$(13_10)	DEAD,$(13_10)}$(13_10)$(13_10)enum enemystate	$(13_10){$(13_10)	ENTERING,$(13_10)	SHOTTING,$(13_10)	FLEEING,$(13_10)	MOVING,$(13_10)	$(13_10)}$(13_10)$(13_10)enum enemyenteringstate$(13_10){$(13_10)	LIGHTSPEED,$(13_10)	COMEANDGO,$(13_10)	TRESPASSING,$(13_10)	PLANNED$(13_10)}$(13_10)//Free flow = true + entrance_path = true --> enter with path and continuos on - Light speed$(13_10)//Free flow = false + entrance_path = true --> enter with path leaves with path - Come and go$(13_10)//Free flow = true + entrance_path = false --> enter with free flow and continuos on - Tresspassing$(13_10)//Free flow = false + entrance_path = false --> enter with preformed path and never stops - Planed$(13_10)$(13_10)enum firetype {$(13_10)	STRAIGHT,$(13_10)	BIG_STRAIGHT,$(13_10)	SEQUENCE,$(13_10)	BALL,$(13_10)	TRIPLE_BALL,$(13_10)	GRANADE,$(13_10)	BALL_GRANADE,$(13_10)	BOMERANG,$(13_10)	DNA,$(13_10)	HOMING,$(13_10)	TOTAL,$(13_10)}$(13_10)$(13_10)enum fireteam {$(13_10)	ALLY,$(13_10)	ENEMY,$(13_10)	NOONE,$(13_10)}$(13_10)$(13_10)enum firepattern $(13_10){$(13_10)	IN_LINE,$(13_10)	HOMING,$(13_10)	PRESET,$(13_10)}$(13_10)"


/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 27390B90
/// @DnDArgument : "code" "/// @desc Initialise & Globals$(13_10)//https://www.youtube.com/watch?v=JwWuZXyTzN0&list=PLPRT_JORnIuosvhfax2TQTEmN7OYTcSvK&index=6$(13_10)$(13_10)randomize();$(13_10)$(13_10)room_goto(ROOM_START)$(13_10)$(13_10)global.gamePaused = false;$(13_10)$(13_10)global.iCamera = instance_create_layer(10,950,layer,o_camera);$(13_10)$(13_10)global.iGUI = instance_create_layer(10,750,layer,o_GUI);$(13_10)$(13_10)global.iSound = instance_create_layer(140,750,layer,o_sound);$(13_10)$(13_10)global.iParticle = instance_create_layer(140,950,layer,o_particle_system);$(13_10)$(13_10)$(13_10)//Enemys (for now here)$(13_10)clock_initial = 0$(13_10)global.clock = 0$(13_10)enemy_kamikaze_clock = 0$(13_10)enemys_to_create = 010;$(13_10)$(13_10)global.hp = 5$(13_10)$(13_10)$(13_10)script_execute(spr_functions)$(13_10)$(13_10)"
/// @desc Initialise & Globals
//https://www.youtube.com/watch?v=JwWuZXyTzN0&list=PLPRT_JORnIuosvhfax2TQTEmN7OYTcSvK&index=6

randomize();

room_goto(ROOM_START)

global.gamePaused = false;

global.iCamera = instance_create_layer(10,950,layer,o_camera);

global.iGUI = instance_create_layer(10,750,layer,o_GUI);

global.iSound = instance_create_layer(140,750,layer,o_sound);

global.iParticle = instance_create_layer(140,950,layer,o_particle_system);


//Enemys (for now here)
clock_initial = 0
global.clock = 0
enemy_kamikaze_clock = 0
enemys_to_create = 010;

global.hp = 5


script_execute(spr_functions)

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 4E5ACEB5
/// @DnDDisabled : 1
/// @DnDArgument : "soundid" "Anamana_Akira"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "Anamana_Akira"