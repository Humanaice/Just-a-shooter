/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6CCECC8A
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_player_movement"
function scr_player_movement() 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 59DE038D
	/// @DnDComment : Player Inputs$(13_10)Initial movement temp vribles$(13_10)Normal/Diagonal movements
	/// @DnDParent : 6CCECC8A
	/// @DnDArgument : "code" "//Scripts$(13_10)$(13_10)script_execute(scr_get_input)$(13_10)$(13_10)//getting inputs$(13_10)var _dhspeed = 0;$(13_10)var _dvspeed = 0;$(13_10)var keyhdirection = rightkey - leftkey;$(13_10)var keyvdirection  = downkey - upkey;$(13_10)$(13_10)if (gphmove != 0) or (gpvmove != 0) $(13_10){$(13_10)	_dhspeed = sign(gphmove);$(13_10)	_dvspeed = sign(gpvmove);$(13_10)$(13_10)}$(13_10)if (keyhdirection != 0) or (keyvdirection != 0) $(13_10){$(13_10)	_dhspeed = sign(keyhdirection);$(13_10)	_dvspeed = sign(keyvdirection);$(13_10)}$(13_10)$(13_10)//Movement$(13_10)if (can_move)$(13_10){$(13_10)hspd = _dhspeed * spd$(13_10)vspd = _dvspeed * spd$(13_10)} else$(13_10){$(13_10)	hspd = 0$(13_10)}$(13_10)//Diagonal Movement$(13_10)$(13_10)if (_dhspeed != 0) and (_dvspeed != 0) $(13_10){$(13_10)	spd = dagspd;$(13_10)} else $(13_10){$(13_10)	spd = walkspd;$(13_10)}$(13_10)$(13_10)dhspeed = _dhspeed$(13_10)dvspeed = _dvspeed$(13_10)"
	//Scripts
	
	script_execute(scr_get_input)
	
	//getting inputs
	var _dhspeed = 0;
	var _dvspeed = 0;
	var keyhdirection = rightkey - leftkey;
	var keyvdirection  = downkey - upkey;
	
	if (gphmove != 0) or (gpvmove != 0) 
	{
		_dhspeed = sign(gphmove);
		_dvspeed = sign(gpvmove);
	
	}
	if (keyhdirection != 0) or (keyvdirection != 0) 
	{
		_dhspeed = sign(keyhdirection);
		_dvspeed = sign(keyvdirection);
	}
	
	//Movement
	if (can_move)
	{
	hspd = _dhspeed * spd
	vspd = _dvspeed * spd
	} else
	{
		hspd = 0
	}
	//Diagonal Movement
	
	if (_dhspeed != 0) and (_dvspeed != 0) 
	{
		spd = dagspd;
	} else 
	{
		spd = walkspd;
	}
	
	dhspeed = _dhspeed
	dvspeed = _dvspeed

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 44DE14A6
	/// @DnDComment : Player Dash
	/// @DnDParent : 6CCECC8A
	/// @DnDArgument : "code" "//Dash$(13_10)$(13_10)if( hspd != 0 || vspd != 0 ) // Check that we're moving, and if so, then check for dash$(13_10){ $(13_10)	if ( can_dash && !dashing) //Check if we can dash and is not dashing already$(13_10)	{ $(13_10)		if( dash && dashingSteps <= 0) // If player pushes Dash while NOT dashing and CAN dash$(13_10)		{$(13_10)			dashingSteps = dashMaxDuration; // Then for the next 5 steps, moveSpeed will be increased$(13_10)		}$(13_10)	}$(13_10)}$(13_10)// If we're dashing, then add more speed!$(13_10)if( dashingSteps > 0 ) $(13_10){$(13_10)	var _range = 10$(13_10)	part_particles_create(o_particle_system.particle_system,x,y,o_particle_system.particle_type_player_fade,1)$(13_10)	part_type_speed(o_particle_system.particle_type_player_fade,2,4,0,0)$(13_10)	part_type_direction(o_particle_system.particle_type_player_fade,direction,direction,0,0)$(13_10)	$(13_10)	part_particles_create(o_particle_system.particle_system,x + random_range(_range,-_range),y + random_range(_range,-_range),o_particle_system.ptc_ty_plr_fadedashflies,1)$(13_10)	part_particles_create(o_particle_system.particle_system,x + random_range(_range,-_range),y + random_range(_range,-_range),o_particle_system.ptc_ty_plr_fadedashflies,1)$(13_10)	part_particles_create(o_particle_system.particle_system,x + random_range(_range,-_range),y + random_range(_range,-_range),o_particle_system.ptc_ty_plr_fadedashflies,1)$(13_10)	part_type_speed(o_particle_system.ptc_ty_plr_fadedashflies,1,3,0,0)$(13_10)	part_type_direction(o_particle_system.ptc_ty_plr_fadedashflies,direction,direction,random_range(_range,-_range),0)$(13_10)	$(13_10)	hspd += dashspd * dhspeed;$(13_10)	vspd += dashspd * dvspeed;$(13_10)	dashing = true; //we are dashing$(13_10)	dashingSteps--; // Decreases dashingSteps each step until it's 0$(13_10)}$(13_10)$(13_10)if (dashing) //while dashing we can not dash and we set the timer to our next dash$(13_10){ $(13_10)	can_dash = false;$(13_10)	dash_cool = 30;$(13_10)	can_damage_player = false;$(13_10)}$(13_10)$(13_10)if ( dashingSteps <= 0 ) //when the dash stops...$(13_10){ $(13_10)	dashing = false;$(13_10)	can_damage_player = true;$(13_10)}$(13_10)$(13_10)if (!can_dash) // if we cannot dash,then we decress the timer and...$(13_10){ $(13_10)	dash_cool--;$(13_10)	if (dash_cool <= 0) //when the timer hits or is below 0 then we can dash again$(13_10)	{ $(13_10)		can_dash = true;$(13_10)	}$(13_10)}$(13_10)"
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
		var _range = 10
		part_particles_create(o_particle_system.particle_system,x,y,o_particle_system.particle_type_player_fade,1)
		part_type_speed(o_particle_system.particle_type_player_fade,2,4,0,0)
		part_type_direction(o_particle_system.particle_type_player_fade,direction,direction,0,0)
		
		part_particles_create(o_particle_system.particle_system,x + random_range(_range,-_range),y + random_range(_range,-_range),o_particle_system.ptc_ty_plr_fadedashflies,1)
		part_particles_create(o_particle_system.particle_system,x + random_range(_range,-_range),y + random_range(_range,-_range),o_particle_system.ptc_ty_plr_fadedashflies,1)
		part_particles_create(o_particle_system.particle_system,x + random_range(_range,-_range),y + random_range(_range,-_range),o_particle_system.ptc_ty_plr_fadedashflies,1)
		part_type_speed(o_particle_system.ptc_ty_plr_fadedashflies,1,3,0,0)
		part_type_direction(o_particle_system.ptc_ty_plr_fadedashflies,direction,direction,random_range(_range,-_range),0)
		
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