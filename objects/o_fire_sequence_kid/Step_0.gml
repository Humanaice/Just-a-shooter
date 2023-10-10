/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 4C9F6499
event_inherited();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4A38E1C7
/// @DnDArgument : "var" "global.gamePaused"
/// @DnDArgument : "value" "false"
if(global.gamePaused == false)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 30323936
	/// @DnDParent : 4A38E1C7
	/// @DnDArgument : "code" "direction = bullet_angle$(13_10)if (image_alpha > 0)$(13_10){$(13_10)	speed = bullet_spd;$(13_10)	image_alpha -= image_alpha_decrease$(13_10)}$(13_10)$(13_10)if (image_alpha <= 0)$(13_10){$(13_10)	instance_destroy()$(13_10)}$(13_10)$(13_10)if (bullet_team == fireteam.ALLY)$(13_10){$(13_10)	sprite_index = spr_fire_sequence_kid;$(13_10)} else $(13_10){$(13_10)	sprite_index = spr_fire_sequence_kid_enemy;$(13_10)}$(13_10)$(13_10)var bouncing = 0.1;$(13_10)image_xscale = random_range(scale - bouncing,scale + bouncing);$(13_10)image_yscale = random_range(scale - bouncing,scale + bouncing);$(13_10)//image_xscale = scale * 1.2;$(13_10)//image_yscale = scale * 1.5;$(13_10)image_angle = bullet_angle -90$(13_10)"
	direction = bullet_angle
	if (image_alpha > 0)
	{
		speed = bullet_spd;
		image_alpha -= image_alpha_decrease
	}
	
	if (image_alpha <= 0)
	{
		instance_destroy()
	}
	
	if (bullet_team == fireteam.ALLY)
	{
		sprite_index = spr_fire_sequence_kid;
	} else 
	{
		sprite_index = spr_fire_sequence_kid_enemy;
	}
	
	var bouncing = 0.1;
	image_xscale = random_range(scale - bouncing,scale + bouncing);
	image_yscale = random_range(scale - bouncing,scale + bouncing);
	//image_xscale = scale * 1.2;
	//image_yscale = scale * 1.5;
	image_angle = bullet_angle -90
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6ED51F25
else
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 6A01C863
	/// @DnDParent : 6ED51F25
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10) stop_at_pause()"
	/// @description Execute Code
	 stop_at_pause()
}