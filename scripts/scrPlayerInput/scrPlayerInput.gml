/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 12D47443
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scrPlayerInput"
function scrPlayerInput() 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 12A66572
	/// @DnDParent : 12D47443
	/// @DnDArgument : "code" "/// @Get All the players input$(13_10)$(13_10)///Reset Variebles$(13_10)dash = false$(13_10)//playerfire=false$(13_10)//stopplayerfire=false$(13_10)$(13_10)///GamepadInput$(13_10)//script_execute(scrGampadInput)$(13_10)$(13_10)upkey = keyboard_check(ord("W")); //pega o input da tecla "W" - return 1;$(13_10)leftkey = keyboard_check(ord("A"));//pega o input da tecla  "A" - return 1;$(13_10)downkey = keyboard_check(ord("S"));//pega o input da tecla  "S" - return 1;$(13_10)rightkey = keyboard_check(ord("D"));//pega o input da tecla  "D" - return 1;$(13_10)dashkey = keyboard_check_pressed(ord("J"));$(13_10)spacekey = keyboard_check_pressed(vk_space);$(13_10)upkeyReleased =keyboard_check_released(ord("W"));$(13_10)downkeyReleased = keyboard_check_released(ord("S"));$(13_10)firekey =  keyboard_check(ord("H"));$(13_10)//stopfirekey = !keyboard_check(ord("H"))$(13_10)$(13_10)$(13_10)if (dashkey) $(13_10){$(13_10)	dash = true$(13_10)}$(13_10)/*$(13_10)if (firekey) $(13_10){$(13_10)	playerfire = true$(13_10)}$(13_10)$(13_10)if (stopfirekey)$(13_10){$(13_10)	stopplayerfire = true$(13_10)}$(13_10)*/"
	/// @Get All the players input
	
	///Reset Variebles
	dash = false
	//playerfire=false
	//stopplayerfire=false
	
	///GamepadInput
	//script_execute(scrGampadInput)
	
	upkey = keyboard_check(ord("W")); //pega o input da tecla "W" - return 1;
	leftkey = keyboard_check(ord("A"));//pega o input da tecla  "A" - return 1;
	downkey = keyboard_check(ord("S"));//pega o input da tecla  "S" - return 1;
	rightkey = keyboard_check(ord("D"));//pega o input da tecla  "D" - return 1;
	dashkey = keyboard_check_pressed(ord("J"));
	spacekey = keyboard_check_pressed(vk_space);
	upkeyReleased =keyboard_check_released(ord("W"));
	downkeyReleased = keyboard_check_released(ord("S"));
	firekey =  keyboard_check(ord("H"));
	//stopfirekey = !keyboard_check(ord("H"))
	
	
	if (dashkey) 
	{
		dash = true
	}
	/*
	if (firekey) 
	{
		playerfire = true
	}
	
	if (stopfirekey)
	{
		stopplayerfire = true
	}
	*//**/
}