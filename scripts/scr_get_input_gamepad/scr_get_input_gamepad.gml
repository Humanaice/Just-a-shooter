/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 54CEA1BF
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_get_input_gamepad"
function scr_get_input_gamepad() 
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 060C1CD5
	/// @DnDParent : 54CEA1BF
	/// @DnDArgument : "var" "dead_zone"
	/// @DnDArgument : "value" "0.3"
	var dead_zone = 0.3;

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 2274A9C6
	/// @DnDParent : 54CEA1BF
	/// @DnDArgument : "init_temp" "1"
	/// @DnDArgument : "cond" "i < 12"
	for(var i = 0; i < 12; i += 1) {
		/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Connected
		/// @DnDVersion : 1
		/// @DnDHash : 1B426A42
		/// @DnDParent : 2274A9C6
		/// @DnDArgument : "var" "connected"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "gp" "i"
		var connected = gamepad_is_connected(i);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0AD5E5C0
		/// @DnDParent : 2274A9C6
		/// @DnDArgument : "var" "connected"
		/// @DnDArgument : "value" "true"
		if(connected == true)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6056B591
			/// @DnDParent : 0AD5E5C0
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "on_gamepad"
			on_gamepad = true;
		
			/// @DnDAction : YoYo Games.Gamepad.Set_Gamepad_Axis_Deadzone
			/// @DnDVersion : 1
			/// @DnDHash : 28137B29
			/// @DnDParent : 0AD5E5C0
			/// @DnDArgument : "gp" "i"
			/// @DnDArgument : "deadzone" "dead_zone"
			gamepad_set_axis_deadzone(i, dead_zone);
		
			/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
			/// @DnDVersion : 1.1
			/// @DnDHash : 3144C5AE
			/// @DnDParent : 0AD5E5C0
			/// @DnDArgument : "var" "gphmove"
			/// @DnDArgument : "gp" "i"
			gphmove = gamepad_is_connected(i) ? gamepad_axis_value(i, gp_axislh) : 0;
		
			/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
			/// @DnDVersion : 1.1
			/// @DnDHash : 1BA53EEA
			/// @DnDParent : 0AD5E5C0
			/// @DnDArgument : "var" "gpvmove"
			/// @DnDArgument : "gp" "i"
			/// @DnDArgument : "axis" "gp_axislv"
			gpvmove = gamepad_is_connected(i) ? gamepad_axis_value(i, gp_axislv) : 0;
		
			/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Pressed
			/// @DnDVersion : 1.1
			/// @DnDHash : 560607FE
			/// @DnDParent : 0AD5E5C0
			/// @DnDArgument : "gp" "i"
			/// @DnDArgument : "btn" "gp_face1"
			var l560607FE_0 = i;
			var l560607FE_1 = gp_face1;
			if(gamepad_is_connected(l560607FE_0) && gamepad_button_check_pressed(l560607FE_0, l560607FE_1))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 06672335
				/// @DnDParent : 560607FE
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "dash"
				dash = true;
			}
		
			/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Down
			/// @DnDVersion : 1.1
			/// @DnDHash : 4715E7F9
			/// @DnDParent : 0AD5E5C0
			/// @DnDArgument : "gp" "i"
			/// @DnDArgument : "btn" "gp_face3"
			var l4715E7F9_0 = i;
			var l4715E7F9_1 = gp_face3;
			if(gamepad_is_connected(l4715E7F9_0) && (gamepad_button_check(l4715E7F9_0, l4715E7F9_1) || gamepad_button_check_released(l4715E7F9_0, l4715E7F9_1)))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 077E64F6
				/// @DnDParent : 4715E7F9
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "playerfire"
				playerfire = true;
			}
		
			/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Down
			/// @DnDVersion : 1.1
			/// @DnDHash : 4524FBDC
			/// @DnDParent : 0AD5E5C0
			/// @DnDArgument : "gp" "i"
			/// @DnDArgument : "btn" "gp_face3"
			/// @DnDArgument : "not" "1"
			var l4524FBDC_0 = i;
			var l4524FBDC_1 = gp_face3;
			if(gamepad_is_connected(l4524FBDC_0) && !(gamepad_button_check(l4524FBDC_0, l4524FBDC_1) || gamepad_button_check_released(l4524FBDC_0, l4524FBDC_1)))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1211F2DD
				/// @DnDParent : 4524FBDC
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "playerfire"
				playerfire = true;
			}
		
			/// @DnDAction : YoYo Games.Loops.Break
			/// @DnDVersion : 1
			/// @DnDHash : 0C439EED
			/// @DnDParent : 0AD5E5C0
			break;
		}
	}
}