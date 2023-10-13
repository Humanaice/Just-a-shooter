/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 08E73149
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)pause_option =["Continue","Restart Level","Back to Title Screen","Quit to Desktop"];$(13_10)pause_option_selected = 0;$(13_10)$(13_10)function SetPauseOption ()$(13_10){$(13_10)	return pause_option;$(13_10)}$(13_10)$(13_10)function SetPauseOptionSelected()$(13_10){$(13_10)	return pause_option_selected;$(13_10)}"
/// @description Execute Code
pause_option =["Continue","Restart Level","Back to Title Screen","Quit to Desktop"];
pause_option_selected = 0;

function SetPauseOption ()
{
	return pause_option;
}

function SetPauseOptionSelected()
{
	return pause_option_selected;
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6CD1856A
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)room_goto(ROOM_START);$(13_10)global.iCamera = instance_create_layer(room_width - 128,128,layer,oCamera);$(13_10)$(13_10)global.iGUI = instance_create_layer(room_width - 128,256,layer,oGUI);$(13_10)$(13_10)global.clock = 1;$(13_10)global.gamePaused = false;$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
/// @description Execute Code
room_goto(ROOM_START);
global.iCamera = instance_create_layer(room_width - 128,128,layer,oCamera);

global.iGUI = instance_create_layer(room_width - 128,256,layer,oGUI);

global.clock = 1;
global.gamePaused = false;