/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5D45818A
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)pause_option =["Continue","Restart Level","Back to Title Screen","Quit to Desktop"];$(13_10)pause_option_selected = 0;$(13_10)paused_surf = -1;$(13_10)screenshot = 0;$(13_10)$(13_10)function GetResolution(){$(13_10)	var resol;$(13_10)	with (oCamera)$(13_10)	{$(13_10)		resol = ReturnCameraResolution();$(13_10)	}$(13_10)	return resol;$(13_10)}$(13_10)$(13_10)function Screenshot()$(13_10){$(13_10)	ids_list = ds_list_create();$(13_10)	var list = ids_list;$(13_10)	with (all)$(13_10)	{$(13_10)		ds_list_add(list, id);$(13_10)	}$(13_10)	$(13_10)}$(13_10)$(13_10)"
/// @description Execute Code
pause_option =["Continue","Restart Level","Back to Title Screen","Quit to Desktop"];
pause_option_selected = 0;
paused_surf = -1;
screenshot = 0;

function GetResolution(){
	var resol;
	with (oCamera)
	{
		resol = ReturnCameraResolution();
	}
	return resol;
}

function Screenshot()
{
	ids_list = ds_list_create();
	var list = ids_list;
	with (all)
	{
		ds_list_add(list, id);
	}
	
}