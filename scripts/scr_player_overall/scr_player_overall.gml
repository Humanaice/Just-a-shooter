/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0B0F624D
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_player_overall"
function scr_player_overall() 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 565DC8B3
	/// @DnDComment : Player Inputs$(13_10)Initial movement temp vribles$(13_10)Normal/Diagonal movements
	/// @DnDParent : 0B0F624D
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
	/// @DnDHash : 3866E8D8
	/// @DnDComment : Player Dash
	/// @DnDParent : 0B0F624D
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

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 265E7424
	/// @DnDComment : Player wall collision and$(13_10)final Movements
	/// @DnDParent : 0B0F624D
	/// @DnDArgument : "code" "// Collisions$(13_10)// HORIZONTAL collision$(13_10)$(13_10)if (place_meeting(x+hspd,y,o_wall))  // check if a theoretical move to either left or right collides with the wall$(13_10){$(13_10)	var collision = false; // if so then right now we dont know if the are colliding so collide is false$(13_10)	while (collision == false) $(13_10)	{$(13_10)		if (!place_meeting(x+sign(hspd),y,o_wall))  // check if  there not is a space between them of 1$(13_10)		{$(13_10)			x += sign(hspd);  //if there is not then move so there is $(13_10)		} else  // and if there is not the space then$(13_10)		{$(13_10)			collision = true;$(13_10)			hspd = 0; // and stop the player from moving$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)//VERTICAL collision$(13_10)if (place_meeting(x,y+vspd,o_wall)) $(13_10){$(13_10)	var collision = false;$(13_10)	while (collision == false) $(13_10)	{$(13_10)		if (!place_meeting(x,y+sign(vspd),o_wall)) $(13_10)		{$(13_10)			y += sign(vspd);   $(13_10)		} else $(13_10)		{$(13_10)			collision = true;$(13_10)			vspd = 0;$(13_10)			$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)//Final moves the player$(13_10)x += hspd; $(13_10)y += vspd;"
	// Collisions
	// HORIZONTAL collision
	
	if (place_meeting(x+hspd,y,o_wall))  // check if a theoretical move to either left or right collides with the wall
	{
		var collision = false; // if so then right now we dont know if the are colliding so collide is false
		while (collision == false) 
		{
			if (!place_meeting(x+sign(hspd),y,o_wall))  // check if  there not is a space between them of 1
			{
				x += sign(hspd);  //if there is not then move so there is 
			} else  // and if there is not the space then
			{
				collision = true;
				hspd = 0; // and stop the player from moving
			}
		}
	}
	
	//VERTICAL collision
	if (place_meeting(x,y+vspd,o_wall)) 
	{
		var collision = false;
		while (collision == false) 
		{
			if (!place_meeting(x,y+sign(vspd),o_wall)) 
			{
				y += sign(vspd);   
			} else 
			{
				collision = true;
				vspd = 0;
				
			}
		}
	}
	
	//Final moves the player
	x += hspd; 
	y += vspd;

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 188652F5
	/// @DnDComment : Hp
	/// @DnDParent : 0B0F624D
	/// @DnDArgument : "code" "// HP$(13_10)$(13_10)hpcurrent = hpcurrent$(13_10)$(13_10)if (hpcooldown > 0) $(13_10){$(13_10)	hpcooldown --;$(13_10)}$(13_10)$(13_10)if (hpcooldown <= 0) $(13_10){$(13_10)	player_damaged = false;$(13_10)}$(13_10)$(13_10)$(13_10)"
	// HP
	
	hpcurrent = hpcurrent
	
	if (hpcooldown > 0) 
	{
		hpcooldown --;
	}
	
	if (hpcooldown <= 0) 
	{
		player_damaged = false;
	}

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 290BBA86
	/// @DnDComment : States$(13_10)
	/// @DnDParent : 0B0F624D
	/// @DnDArgument : "code" "// Checking States$(13_10)if (dashing) $(13_10){$(13_10)	state = playerstate.DASHING;$(13_10)} else if (!hspd = 0) or (!vspd = 0) $(13_10){$(13_10)	state = playerstate.MOVING;$(13_10)} else if (hspd = 0) or (vspd = 0) $(13_10){$(13_10)	state = playerstate.IDLE;$(13_10)}$(13_10)$(13_10)if (hpcurrent == 0) $(13_10){$(13_10)	state = playerstate.DEAD;$(13_10)}$(13_10)"
	// Checking States
	if (dashing) 
	{
		state = playerstate.DASHING;
	} else if (!hspd = 0) or (!vspd = 0) 
	{
		state = playerstate.MOVING;
	} else if (hspd = 0) or (vspd = 0) 
	{
		state = playerstate.IDLE;
	}
	
	if (hpcurrent == 0) 
	{
		state = playerstate.DEAD;
	}

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 6282F419
	/// @DnDParent : 0B0F624D
	/// @DnDArgument : "code" "if (playerfire) $(13_10){$(13_10)	if (player_bullet_cooldown[0] <= 0)$(13_10)	{$(13_10)		var _inst0 = instance_create_layer(x,bbox_top,"Layer_bullet",ds_fire_type_list[0]);$(13_10)		with(_inst0) $(13_10)			{$(13_10)				bullet_team = fireteam.ALLY;$(13_10)				bullet_angle = other.player_direction;$(13_10)				creator = o_Player$(13_10)				bullet_dmg = other.player_bullet_damage * other.player_bullet_damage_mult[0]$(13_10)			}$(13_10)		player_bullet_cooldown[0] = player_bullet_add_cooldown[0]$(13_10)	}else$(13_10)	{$(13_10)		player_bullet_cooldown[0] --;$(13_10)	}$(13_10)	$(13_10)	if (player_bullet_cooldown[1] <= 0)$(13_10)	{$(13_10)		var _inst0 = instance_create_layer(x,bbox_top,"Layer_bullet",ds_fire_type_list[1]);$(13_10)		with(_inst0) $(13_10)			{$(13_10)				bullet_team = fireteam.ALLY;$(13_10)				bullet_angle = other.player_direction;$(13_10)				creator = o_Player$(13_10)				bullet_dmg = other.player_bullet_damage * other.player_bullet_damage_mult[1]$(13_10)			}$(13_10)		player_bullet_cooldown[1] = player_bullet_add_cooldown[1]$(13_10)	}else$(13_10)	{$(13_10)		player_bullet_cooldown[1] --;$(13_10)	}$(13_10)	$(13_10)	if (player_bullet_cooldown[2] <= 0)$(13_10)	{$(13_10)		var _inst0 = instance_create_layer(x,bbox_top,"Layer_bullet",ds_fire_type_list[2]);$(13_10)		with(_inst0) $(13_10)			{$(13_10)				bullet_team = fireteam.ALLY;$(13_10)				bullet_angle = other.player_direction;$(13_10)				creator = o_Player$(13_10)				bullet_dmg = other.player_bullet_damage * other.player_bullet_damage_mult[2]$(13_10)			}$(13_10)		player_bullet_cooldown[2] = player_bullet_add_cooldown[2]$(13_10)	}else$(13_10)	{$(13_10)		player_bullet_cooldown[2] --;$(13_10)	}$(13_10)	/*$(13_10)	if (player_fire_cool <= 0) $(13_10)	{$(13_10)		var _inst0 = instance_create_layer(x,bbox_top,"Layer_bullet",ds_fire_type_list[0]);$(13_10)		var _inst1 = instance_create_layer(x,bbox_top,"Layer_bullet",ds_fire_type_list[1]);$(13_10)		var _inst2 = instance_create_layer(x,bbox_top,"Layer_bullet",ds_fire_type_list[2]);$(13_10)		with(_inst0) $(13_10)			{$(13_10)				bullet_team = fireteam.ALLY;$(13_10)				bullet_angle = other.player_direction;$(13_10)				creator = o_Player$(13_10)				bullet_dmg = other.player_bullet_damage * other.player_bullet_damage_mult[0]$(13_10)			}$(13_10)		with(_inst1) $(13_10)			{$(13_10)				bullet_team = fireteam.ALLY;$(13_10)				bullet_angle = other.player_direction;$(13_10)				creator = o_Player$(13_10)			}$(13_10)		with(_inst2) $(13_10)			{$(13_10)				bullet_team = fireteam.ALLY;$(13_10)				bullet_angle = other.player_direction;$(13_10)				creator = o_Player$(13_10)			}$(13_10)		player_fire_cool = player_fire_short_cool$(13_10)	}$(13_10)	*/$(13_10)	$(13_10)}$(13_10)$(13_10)if (player_fire_cool > 0) $(13_10){$(13_10)	player_fire_cool --;$(13_10)}$(13_10)$(13_10)/*$(13_10)if (player_bullet_cooldown[0] <= 0)$(13_10){$(13_10)		var _inst0 = instance_create_layer(x,bbox_top,"Layer_bullet",ds_fire_type_list[0]);$(13_10)		with(_inst0) $(13_10)			{$(13_10)				bullet_team = fireteam.ALLY;$(13_10)				bullet_angle = other.player_direction;$(13_10)				creator = o_Player$(13_10)				bullet_dmg = other.player_bullet_damage * other.player_bullet_damage_mult[0]$(13_10)			}$(13_10)		player_bullet_cooldown[0] = player_bullet_add_cooldown[0]$(13_10)}else$(13_10){$(13_10)	player_bullet_cooldown[0] --;$(13_10)}$(13_10)*/$(13_10)"
	if (playerfire) 
	{
		if (player_bullet_cooldown[0] <= 0)
		{
			var _inst0 = instance_create_layer(x,bbox_top,"Layer_bullet",ds_fire_type_list[0]);
			with(_inst0) 
				{
					bullet_team = fireteam.ALLY;
					bullet_angle = other.player_direction;
					creator = o_Player
					bullet_dmg = other.player_bullet_damage * other.player_bullet_damage_mult[0]
				}
			player_bullet_cooldown[0] = player_bullet_add_cooldown[0]
		}else
		{
			player_bullet_cooldown[0] --;
		}
		
		if (player_bullet_cooldown[1] <= 0)
		{
			var _inst0 = instance_create_layer(x,bbox_top,"Layer_bullet",ds_fire_type_list[1]);
			with(_inst0) 
				{
					bullet_team = fireteam.ALLY;
					bullet_angle = other.player_direction;
					creator = o_Player
					bullet_dmg = other.player_bullet_damage * other.player_bullet_damage_mult[1]
				}
			player_bullet_cooldown[1] = player_bullet_add_cooldown[1]
		}else
		{
			player_bullet_cooldown[1] --;
		}
		
		if (player_bullet_cooldown[2] <= 0)
		{
			var _inst0 = instance_create_layer(x,bbox_top,"Layer_bullet",ds_fire_type_list[2]);
			with(_inst0) 
				{
					bullet_team = fireteam.ALLY;
					bullet_angle = other.player_direction;
					creator = o_Player
					bullet_dmg = other.player_bullet_damage * other.player_bullet_damage_mult[2]
				}
			player_bullet_cooldown[2] = player_bullet_add_cooldown[2]
		}else
		{
			player_bullet_cooldown[2] --;
		}
		/*
		if (player_fire_cool <= 0) 
		{
			var _inst0 = instance_create_layer(x,bbox_top,"Layer_bullet",ds_fire_type_list[0]);
			var _inst1 = instance_create_layer(x,bbox_top,"Layer_bullet",ds_fire_type_list[1]);
			var _inst2 = instance_create_layer(x,bbox_top,"Layer_bullet",ds_fire_type_list[2]);
			with(_inst0) 
				{
					bullet_team = fireteam.ALLY;
					bullet_angle = other.player_direction;
					creator = o_Player
					bullet_dmg = other.player_bullet_damage * other.player_bullet_damage_mult[0]
				}
			with(_inst1) 
				{
					bullet_team = fireteam.ALLY;
					bullet_angle = other.player_direction;
					creator = o_Player
				}
			with(_inst2) 
				{
					bullet_team = fireteam.ALLY;
					bullet_angle = other.player_direction;
					creator = o_Player
				}
			player_fire_cool = player_fire_short_cool
		}
		*/
		
	}
	
	if (player_fire_cool > 0) 
	{
		player_fire_cool --;
	}
	
	/*
	if (player_bullet_cooldown[0] <= 0)
	{
			var _inst0 = instance_create_layer(x,bbox_top,"Layer_bullet",ds_fire_type_list[0]);
			with(_inst0) 
				{
					bullet_team = fireteam.ALLY;
					bullet_angle = other.player_direction;
					creator = o_Player
					bullet_dmg = other.player_bullet_damage * other.player_bullet_damage_mult[0]
				}
			player_bullet_cooldown[0] = player_bullet_add_cooldown[0]
	}else
	{
		player_bullet_cooldown[0] --;
	}
	*/
	/**/

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 7856D4D0
	/// @DnDComment : Player fire
	/// @DnDDisabled : 1
	/// @DnDParent : 0B0F624D
	/// @DnDArgument : "code" "//Player fire$(13_10)$(13_10)if (playerfire) $(13_10){$(13_10)	if (player_fire_cool <= 0) $(13_10)	{$(13_10)		audio_sound_gain(snd_laser_fire, 1, 0);$(13_10)		audio_play_sound(snd_laser_fire,1,false);$(13_10)		instance_create_layer(x,bbox_top - 20,"Layer_bullet",o_muzzle_fire)$(13_10)		if (current_player_bullet_type == firetype.STRAIGHT) $(13_10)		{$(13_10)			if (current_upgrade_bullet == 0) $(13_10)			{$(13_10)				var _inst = instance_create_layer(x,bbox_top,"Layer_bullet",o_fire_straight);$(13_10)				with(_inst) $(13_10)				{$(13_10)					bullet_team = fireteam.ALLY;$(13_10)					bullet_angle = other.player_direction;$(13_10)				}$(13_10)				player_fire_cool = player_fire_short_cool;$(13_10)			}$(13_10)			if (current_upgrade_bullet == 1) $(13_10)			{$(13_10)				var _inst = instance_create_layer(x,bbox_top,"Layer_bullet",o_fire_big_straight);$(13_10)				with(_inst) $(13_10)				{$(13_10)					bullet_team = fireteam.ALLY;$(13_10)					bullet_angle = other.player_direction;$(13_10)				}$(13_10)				player_fire_cool = player_fire_medium_cool;$(13_10)			}$(13_10)			if (current_upgrade_bullet == 2) $(13_10)			{$(13_10)				var _inst = instance_create_layer(x,bbox_top,"Layer_bullet",o_fire_sequence_parent);$(13_10)				with(_inst) $(13_10)				{$(13_10)					bullet_team = fireteam.ALLY;$(13_10)					bullet_angle = other.player_direction;$(13_10)				}$(13_10)				player_fire_cool = player_fire_long_cool;$(13_10)			}	$(13_10)		}$(13_10)		if (current_player_bullet_type == firetype.BALL) $(13_10)		{$(13_10)			if (current_upgrade_bullet == 0) $(13_10)			{$(13_10)				var _inst = instance_create_layer(x,bbox_top,"Layer_bullet",o_fire_ball_triple);$(13_10)				with (_inst)$(13_10)				{$(13_10)					bullet_team = fireteam.ALLY;$(13_10)					bullet_angle = other.player_direction;$(13_10)				}$(13_10)				player_fire_cool = player_fire_medium_cool;$(13_10)			}$(13_10)			if (current_upgrade_bullet == 1) $(13_10)			{$(13_10)				var _inst = instance_create_layer(x,bbox_top,"Layer_bullet",o_fire_explosion_grenade);$(13_10)				with(_inst) $(13_10)				{$(13_10)					bullet_team = fireteam.ALLY;$(13_10)					bullet_angle = other.player_direction;$(13_10)				}$(13_10)				player_fire_cool = player_fire_long_cool;$(13_10)			}$(13_10)			if (current_upgrade_bullet == 2)$(13_10)			{$(13_10)				var _inst = instance_create_layer(x,bbox_top,"Layer_bullet",o_fire_explosion_ball);$(13_10)				with(_inst) $(13_10)				{$(13_10)					bullet_team = fireteam.ALLY;$(13_10)					bullet_angle = other.player_direction;$(13_10)				}$(13_10)				player_fire_cool = player_fire_medium_cool;$(13_10)			}$(13_10)		}$(13_10)		if (current_player_bullet_type == firetype.BOMERANG)$(13_10)		{$(13_10)			if (current_upgrade_bullet == 0)$(13_10)			{$(13_10)				var _inst = instance_create_layer(x,bbox_top,"Layer_bullet",o_fire_bommerang);$(13_10)				with(_inst) $(13_10)				{$(13_10)					bullet_team = fireteam.ALLY;$(13_10)					bullet_angle = other.player_direction;$(13_10)				}$(13_10)				player_fire_cool = player_fire_medium_cool - 2;$(13_10)			}$(13_10)			if (current_upgrade_bullet == 1)$(13_10)			{$(13_10)				var _inst = instance_create_layer(x,bbox_top,"Layer_bullet",o_fire_dna_creator);$(13_10)				with(_inst) $(13_10)				{$(13_10)					$(13_10)					bullet_team = fireteam.ALLY;$(13_10)					bullet_angle = other.player_direction;$(13_10)				}$(13_10)				player_fire_cool = player_fire_medium_cool;$(13_10)			}$(13_10)			if (current_upgrade_bullet == 2)$(13_10)			{$(13_10)				var _inst = instance_create_layer(x,bbox_top,"Layer_bullet",o_fire_star_homing_missile);$(13_10)				with(_inst) $(13_10)				{$(13_10)					$(13_10)					bullet_team = fireteam.ALLY;$(13_10)					bullet_angle = other.player_direction;$(13_10)			$(13_10)				}$(13_10)				player_fire_cool = player_fire_medium_cool - 2;$(13_10)			}$(13_10)			/*$(13_10)			if (current_upgrade_bullet == 3)$(13_10)			{$(13_10)				var _inst = instance_create_layer(x,bbox_top,"Layer_bullet",o_fire_star_center_circle);$(13_10)				with (_inst)$(13_10)				{$(13_10)					bullet_team = fireteam.ALLY;$(13_10)					bullet_angle = other.player_direction;$(13_10)					var _choose =choose(-10,10)$(13_10)					for (var i = 0;i < star_amount;i++)$(13_10)					{$(13_10)						var _fire = instance_create_layer(x,y,"Layer_bullet",o_fire_star_circle);$(13_10)						star_dir += add_star_dir;$(13_10)						with (_fire)$(13_10)						{$(13_10)							angle = other.star_dir;$(13_10)							add_angle_rotation = _choose$(13_10)							star_parent_x = other.x$(13_10)							star_parent_y = other.y$(13_10)							_id = _inst.id$(13_10)						}$(13_10)		$(13_10)					}$(13_10)				}$(13_10)				player_fire_cool = player_fire_medium_cool;$(13_10)			}$(13_10)			*/$(13_10)		}$(13_10)		if (current_player_bullet_type == firetype.RAYLASER)$(13_10)		{$(13_10)			if (current_upgrade_bullet == 0)$(13_10)			{$(13_10)				_inst = instance_create_layer(x,bbox_top,"Layer_bullet",o_fire_ray_laser_red_simple);$(13_10)				with (_inst)$(13_10)					{$(13_10)						bullet_team = fireteam.ALLY$(13_10)						bullet_angle = o_Player.direction;$(13_10)						raydistance = 0$(13_10)						stop_firing = false;$(13_10)						go_with = true;$(13_10)						bullet_type = 0$(13_10)$(13_10)					}$(13_10)			$(13_10)					player_fire_cool = 9999$(13_10)$(13_10)			}$(13_10)			if (current_upgrade_bullet == 1)$(13_10)			{$(13_10)				_inst = instance_create_layer(x,bbox_top,"Layer_bullet",o_fire_ray_laser_green);$(13_10)				with (_inst)$(13_10)					{$(13_10)						bullet_team = fireteam.ALLY$(13_10)						bullet_angle = o_Player.direction;$(13_10)						raydistance = 0$(13_10)						stop_firing = false;$(13_10)						go_with = false$(13_10)						sprite_bottom = spr_fire_raylaser_bottom_green$(13_10)						sprite_index = spr_fire_raylaser_body_green$(13_10)$(13_10)					}$(13_10)				player_fire_cool = player_fire_long_cool$(13_10)			}$(13_10)			if (current_upgrade_bullet == 2)$(13_10)			{$(13_10)				_inst = instance_create_layer(x,bbox_top,"Layer_bullet",o_fire_ray_laser_red_blue);$(13_10)				with (_inst)$(13_10)					{$(13_10)						bullet_team = fireteam.ALLY$(13_10)						bullet_angle = -o_Player.direction;$(13_10)						raydistance = 0$(13_10)						stop_firing = false;$(13_10)						go_with = true$(13_10)						sprite_bottom = spr_fire_raylaser_bottom_blue$(13_10)						sprite_index = spr_fire_raylaser_body_blue$(13_10)						time_active = 50$(13_10)						bullet_type = 2$(13_10)						$(13_10)$(13_10)					}$(13_10)				player_fire_cool = player_fire_very_long_cool$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)if (player_fire_cool > 0) $(13_10){$(13_10)	player_fire_cool --;$(13_10)}"


	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 6D6719AD
	/// @DnDComment : Player fire
	/// @DnDDisabled : 1
	/// @DnDParent : 0B0F624D
	/// @DnDArgument : "code" "//Player fire$(13_10)$(13_10)if (playerfire) $(13_10){$(13_10)	if (player_fire_cool <= 0) $(13_10)	{$(13_10)		audio_sound_gain(snd_laser_fire, 1, 0);$(13_10)		audio_play_sound(snd_laser_fire,1,false);$(13_10)		instance_create_layer(x,bbox_top - 20,"Layer_bullet",o_muzzle_fire)$(13_10)		if (current_player_bullet_type == firetype.STRAIGHT) $(13_10)		{$(13_10)			if (current_upgrade_bullet == 0) $(13_10)			{$(13_10)				var _inst = instance_create_layer(x,bbox_top,"Layer_bullet",o_fire_straight);$(13_10)				with(_inst) $(13_10)				{$(13_10)					bullet_team = fireteam.ALLY;$(13_10)					bullet_angle = other.player_direction;$(13_10)					scale = 0.35;$(13_10)				}$(13_10)				player_fire_cool = player_fire_short_cool;$(13_10)			}$(13_10)			if (current_upgrade_bullet == 1) $(13_10)			{$(13_10)				var _inst = instance_create_layer(x,bbox_top,"Layer_bullet",o_fire_straight);$(13_10)				with(_inst) $(13_10)				{$(13_10)					bullet_team = fireteam.ALLY;$(13_10)					scale = 1$(13_10)					sprite_index = spr_fire_straight_big;$(13_10)					bullet_angle = other.player_direction;$(13_10)				}$(13_10)				player_fire_cool = player_fire_medium_cool;$(13_10)			}$(13_10)			if (current_upgrade_bullet == 2) $(13_10)			{$(13_10)				var _inst = instance_create_layer(x,bbox_top,"Layer_bullet",o_fire_sequence_parent);$(13_10)				with(_inst) $(13_10)				{$(13_10)					bullet_team = fireteam.ALLY;$(13_10)					bullet_angle = other.player_direction;$(13_10)				}$(13_10)				player_fire_cool = player_fire_long_cool;$(13_10)			}$(13_10)			$(13_10)		}$(13_10)		if (current_player_bullet_type == firetype.BALL) $(13_10)		{$(13_10)			if (current_upgrade_bullet == 0) $(13_10)			{$(13_10)				//https://www.reddit.com/r/gamemaker/comments/9tvy3w/gms2_help_with_triple_shot_weapon/$(13_10)				var bullet_ball_direction_var = player_direction - (bullet_amont-1) * (angulo_tiro_atual/2);$(13_10)				for (var i = 0;i < bullet_amont; ++i) $(13_10)				{$(13_10)					var _inst = instance_create_layer(x,bbox_top,"Layer_bullet",o_fire_ball);$(13_10)					with(_inst) $(13_10)					{$(13_10)						bullet_team = fireteam.ALLY;$(13_10)						bullet_preset = firepattern.IN_LINE;$(13_10)						bullet_spd = 15;$(13_10)						bullet_angle = (bullet_ball_direction_var + (o_Player.angulo_tiro_atual * i));$(13_10)					}$(13_10)					player_fire_cool = player_fire_medium_cool;$(13_10)				}$(13_10)			}$(13_10)			if (current_upgrade_bullet == 1) $(13_10)			{$(13_10)				var _inst = instance_create_layer(x,bbox_top,"Layer_bullet",o_fire_explosion_grenade);$(13_10)				with(_inst) $(13_10)				{$(13_10)					bullet_team = fireteam.ALLY;$(13_10)					bullet_angle = other.player_direction;$(13_10)				}$(13_10)				player_fire_cool = player_fire_long_cool;$(13_10)			}$(13_10)			if (current_upgrade_bullet == 2)$(13_10)			{$(13_10)				var _inst = instance_create_layer(x,bbox_top,"Layer_bullet",o_fire_explosion_ball);$(13_10)				with(_inst) $(13_10)				{$(13_10)					bullet_team = fireteam.ALLY;$(13_10)					bullet_angle = other.player_direction;$(13_10)				}$(13_10)				player_fire_cool = player_fire_medium_cool;$(13_10)			}$(13_10)		}$(13_10)		if (current_player_bullet_type == firetype.BOMERANG)$(13_10)		{$(13_10)			if (current_upgrade_bullet == 0)$(13_10)			{$(13_10)				var _inst = instance_create_layer(x,bbox_top,"Layer_bullet",o_fire_bommerang);$(13_10)				with(_inst) $(13_10)				{$(13_10)					$(13_10)					bullet_team = fireteam.ALLY;$(13_10)					bullet_angle = -other.player_direction;$(13_10)					path_current = pth_bommerang_goandcome;$(13_10)					path_current_endaction = path_action_stop;$(13_10)					path_check = path_start(path_current,bullet_spd,path_current_endaction,false)$(13_10)					sprite_index = spr_fire_bommerang;$(13_10)			$(13_10)				}$(13_10)				player_fire_cool = player_fire_medium_cool - 2;$(13_10)			}$(13_10)			if (current_upgrade_bullet == 1)$(13_10)			{$(13_10)				var _inst = instance_create_layer(x,bbox_top,"Layer_bullet",o_fire_bommerang);$(13_10)				var _inst_2 = instance_create_layer(x,bbox_top,"Layer_bullet",o_fire_bommerang);$(13_10)				with(_inst)$(13_10)				{$(13_10)					path_current = pth_bommerang_dna;$(13_10)					bullet_team = fireteam.ALLY;$(13_10)					bullet_angle = other.player_direction;$(13_10)					path_current_endaction = path_action_stop;$(13_10)					path_check = path_start(path_current,bullet_spd_dna,path_current_endaction,false)$(13_10)					sprite_index = spr_fire_boomerang_dna;$(13_10)				}$(13_10)				with(_inst_2)$(13_10)				{$(13_10)					path_current = pth_bommerang_dna_left;$(13_10)					bullet_team = fireteam.ALLY;$(13_10)					bullet_angle = other.player_direction;$(13_10)					path_current_endaction = path_action_stop;$(13_10)					path_check = path_start(path_current,bullet_spd_dna,path_current_endaction,false)$(13_10)					sprite_index = spr_fire_boomerang_dna;$(13_10)				}$(13_10)				player_fire_cool = player_fire_medium_cool;$(13_10)			}$(13_10)			if (current_upgrade_bullet == 2)$(13_10)			{$(13_10)				var _inst = instance_create_layer(x,bbox_top,"Layer_bullet",o_fire_star_homing_missile);$(13_10)				with(_inst) $(13_10)				{$(13_10)					$(13_10)					bullet_team = fireteam.ALLY;$(13_10)					bullet_angle = other.player_direction;$(13_10)			$(13_10)				}$(13_10)				player_fire_cool = player_fire_medium_cool - 2;$(13_10)			}$(13_10)			if (current_upgrade_bullet == 3)$(13_10)			{$(13_10)				var _inst = instance_create_layer(x,bbox_top,"Layer_bullet",o_fire_star_center_circle);$(13_10)				with (_inst)$(13_10)				{$(13_10)					bullet_team = fireteam.ALLY;$(13_10)					bullet_angle = other.player_direction;$(13_10)					var _choose =choose(-10,10)$(13_10)					for (var i = 0;i < star_amount;i++)$(13_10)					{$(13_10)						var _fire = instance_create_layer(x,y,"Layer_bullet",o_fire_star_circle);$(13_10)						star_dir += add_star_dir;$(13_10)						with (_fire)$(13_10)						{$(13_10)							angle = other.star_dir;$(13_10)							add_angle_rotation = _choose$(13_10)							star_parent_x = other.x$(13_10)							star_parent_y = other.y$(13_10)							_id = _inst.id$(13_10)						}$(13_10)		$(13_10)					}$(13_10)				}$(13_10)				player_fire_cool = player_fire_medium_cool;$(13_10)			}$(13_10)			$(13_10)		}$(13_10)		if (current_player_bullet_type == firetype.RAYLASER)$(13_10)		{$(13_10)			if (current_upgrade_bullet == 0)$(13_10)			{$(13_10)				_inst = instance_create_layer(x,bbox_top,"Layer_bullet",o_fire_ray_laser_red_simple);$(13_10)				with (_inst)$(13_10)					{$(13_10)						bullet_team = fireteam.ALLY$(13_10)						bullet_angle = o_Player.direction;$(13_10)						raydistance = 0$(13_10)						stop_firing = false;$(13_10)						go_with = true;$(13_10)						bullet_type = 0$(13_10)$(13_10)					}$(13_10)			$(13_10)					player_fire_cool = 9999$(13_10)$(13_10)			}$(13_10)			if (current_upgrade_bullet == 1)$(13_10)			{$(13_10)				_inst = instance_create_layer(x,bbox_top,"Layer_bullet",o_fire_ray_laser_green);$(13_10)				with (_inst)$(13_10)					{$(13_10)						bullet_team = fireteam.ALLY$(13_10)						bullet_angle = o_Player.direction;$(13_10)						raydistance = 0$(13_10)						stop_firing = false;$(13_10)						go_with = false$(13_10)						sprite_bottom = spr_fire_raylaser_bottom_green$(13_10)						sprite_index = spr_fire_raylaser_body_green$(13_10)$(13_10)					}$(13_10)				player_fire_cool = player_fire_long_cool$(13_10)			}$(13_10)			if (current_upgrade_bullet == 2)$(13_10)			{$(13_10)				_inst = instance_create_layer(x,bbox_top,"Layer_bullet",o_fire_ray_laser_red_blue);$(13_10)				with (_inst)$(13_10)					{$(13_10)						bullet_team = fireteam.ALLY$(13_10)						bullet_angle = -o_Player.direction;$(13_10)						raydistance = 0$(13_10)						stop_firing = false;$(13_10)						go_with = true$(13_10)						sprite_bottom = spr_fire_raylaser_bottom_blue$(13_10)						sprite_index = spr_fire_raylaser_body_blue$(13_10)						time_active = 50$(13_10)						bullet_type = 2$(13_10)						$(13_10)$(13_10)					}$(13_10)				player_fire_cool = player_fire_very_long_cool$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)if (player_fire_cool > 0) $(13_10){$(13_10)	player_fire_cool --;$(13_10)}"
}