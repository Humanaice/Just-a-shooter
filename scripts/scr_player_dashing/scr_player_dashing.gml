/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 7A62751E
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_player_dashing"
function scr_player_dashing() 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 3750684C
	/// @DnDComment : Player Dash
	/// @DnDParent : 7A62751E
	/// @DnDArgument : "code" "//Dash$(13_10)$(13_10)if( hspd != 0 || vspd != 0 ) // Check that we're moving, and if so, then check for dash$(13_10){ $(13_10)	if ( can_dash && !dashing) //Check if we can dash and is not dashing already$(13_10)	{ $(13_10)		if( dash && dashingSteps <= 0) // If player pushes Dash while NOT dashing and CAN dash$(13_10)		{$(13_10)			dashingSteps = dashMaxDuration; // Then for the next 5 steps, moveSpeed will be increased$(13_10)		}$(13_10)	}$(13_10)}$(13_10)// If we're dashing, then add more speed!$(13_10)if( dashingSteps > 0 ) $(13_10){$(13_10)	hspd += dashspd * dhspeed;$(13_10)	vspd += dashspd * dvspeed;$(13_10)	dashing = true; //we are dashing$(13_10)	dashingSteps--; // Decreases dashingSteps each step until it's 0$(13_10)}$(13_10)$(13_10)if (dashing) //while dashing we can not dash and we set the timer to our next dash$(13_10){ $(13_10)	can_dash = false;$(13_10)	dash_cool = 30;$(13_10)	can_damage_player = false;$(13_10)}$(13_10)$(13_10)if ( dashingSteps <= 0 ) //when the dash stops...$(13_10){ $(13_10)	dashing = false;$(13_10)	can_damage_player = true;$(13_10)}$(13_10)$(13_10)if (!can_dash) // if we cannot dash,then we decress the timer and...$(13_10){ $(13_10)	dash_cool--;$(13_10)	if (dash_cool <= 0) //when the timer hits or is below 0 then we can dash again$(13_10)	{ $(13_10)		can_dash = true;$(13_10)	}$(13_10)}"
	//Dash
	
	if( hspd != 0 || vspd != 0 ) // Check that we're moving, and if so, then check for dash
	{ 
		if ( can_dash && !dashing) //Check if we can dash and is not dashing already
		{ 
			if( dash && dashingSteps <= 0) // If player pushes Dash while NOT dashing and CAN dash
			{
				dashingSteps = dashMaxDuration; // Then for the next 5 steps, moveSpeed will be increased
			}
		}
	}
	// If we're dashing, then add more speed!
	if( dashingSteps > 0 ) 
	{
		hspd += dashspd * dhspeed;
		vspd += dashspd * dvspeed;
		dashing = true; //we are dashing
		dashingSteps--; // Decreases dashingSteps each step until it's 0
	}
	
	if (dashing) //while dashing we can not dash and we set the timer to our next dash
	{ 
		can_dash = false;
		dash_cool = 30;
		can_damage_player = false;
	}
	
	if ( dashingSteps <= 0 ) //when the dash stops...
	{ 
		dashing = false;
		can_damage_player = true;
	}
	
	if (!can_dash) // if we cannot dash,then we decress the timer and...
	{ 
		dash_cool--;
		if (dash_cool <= 0) //when the timer hits or is below 0 then we can dash again
		{ 
			can_dash = true;
		}
	}
}