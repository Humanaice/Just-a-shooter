/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 624B9495
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_get_input"
function scr_get_input() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 21A9777E
	/// @DnDComment : dash reset
	/// @DnDInput : 3
	/// @DnDParent : 624B9495
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "expr_1" "false"
	/// @DnDArgument : "expr_2" "false"
	/// @DnDArgument : "var" "dash"
	/// @DnDArgument : "var_1" "playerfire"
	/// @DnDArgument : "var_2" "stopplayerfire"
	dash = false;
	playerfire = false;
	stopplayerfire = false;

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 68A55120
	/// @DnDParent : 624B9495
	/// @DnDArgument : "script" "scr_get_input_gamepad"
	/// @DnDSaveInfo : "script" "scr_get_input_gamepad"
	script_execute(scr_get_input_gamepad);

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 5494C81E
	/// @DnDParent : 624B9495
	/// @DnDArgument : "code" "//Keyboard input$(13_10)$(13_10)upkey = keyboard_check(ord("W"));$(13_10)leftkey = keyboard_check(ord("A"));$(13_10)downkey = keyboard_check(ord("S"));$(13_10)rightkey = keyboard_check(ord("D"));$(13_10)dashkey = keyboard_check_pressed(ord("J"));$(13_10)firekey =  keyboard_check(ord("H"));$(13_10)stopfirekey = !keyboard_check(ord("H"))$(13_10)if (dashkey) $(13_10){$(13_10)	dash = true$(13_10)}$(13_10)if (firekey) $(13_10){$(13_10)	playerfire = true$(13_10)}$(13_10)$(13_10)if (stopfirekey)$(13_10){$(13_10)	stopplayerfire = true$(13_10)}"
	//Keyboard input
	
	upkey = keyboard_check(ord("W"));
	leftkey = keyboard_check(ord("A"));
	downkey = keyboard_check(ord("S"));
	rightkey = keyboard_check(ord("D"));
	dashkey = keyboard_check_pressed(ord("J"));
	firekey =  keyboard_check(ord("H"));
	stopfirekey = !keyboard_check(ord("H"))
	if (dashkey) 
	{
		dash = true
	}
	if (firekey) 
	{
		playerfire = true
	}
	
	if (stopfirekey)
	{
		stopplayerfire = true
	}
}