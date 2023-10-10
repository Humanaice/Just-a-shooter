/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 7C07C66F
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_player_collision_xy"
function scr_player_collision_xy() 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 5B470EF0
	/// @DnDComment : Player wall collision and$(13_10)final Movements
	/// @DnDParent : 7C07C66F
	/// @DnDArgument : "code" "// Collisions$(13_10)// HORIZONTAL collision$(13_10)$(13_10)if (place_meeting(x+hspd,y,o_wall))  // check if a theoretical move to either left or right collides with the wall$(13_10){$(13_10)	var collision = false; // if so then right now we dont know if the are colliding so collide is false$(13_10)	while (collision == false) $(13_10)	{$(13_10)		if (!place_meeting(x+sign(hspd),y,o_wall))  // check if  there not is a space between them of 1$(13_10)		{$(13_10)			x += sign(hspd);  //if there is not then move so there is $(13_10)		} else  // and if there is not the space then$(13_10)		{$(13_10)			collision = true;$(13_10)			hspd = 0; // and stop the player from moving$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)//VERTICAL collision$(13_10)if (place_meeting(x,y+vspd,o_wall)) $(13_10){$(13_10)	var collision = false;$(13_10)	while (collision == false) $(13_10)	{$(13_10)		if (!place_meeting(x,y+sign(vspd),o_wall)) $(13_10)		{$(13_10)			y += sign(vspd);   $(13_10)		} else $(13_10)		{$(13_10)			collision = true;$(13_10)			vspd = 0;$(13_10)			$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)//Final moves the player$(13_10)x += hspd; $(13_10)y += vspd;$(13_10)$(13_10)$(13_10)"
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
}