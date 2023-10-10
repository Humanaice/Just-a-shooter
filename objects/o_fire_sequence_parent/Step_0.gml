/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 06741D40
event_inherited();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 253F2EDB
/// @DnDArgument : "var" "global.gamePaused"
/// @DnDArgument : "value" "false"
if(global.gamePaused == false)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 0FC42B56
	/// @DnDParent : 253F2EDB
	/// @DnDArgument : "code" "direction = bullet_angle;$(13_10)if (bullet_team == fireteam.ALLY)$(13_10){$(13_10)	$(13_10)	speed = bullet_spd;$(13_10)	sprite_index = spr_fire_sequence_parent;$(13_10)} else $(13_10){$(13_10)	speed = bullet_spd;$(13_10)	sprite_index = spr_fire_sequence_parent_enemy;$(13_10)}$(13_10)$(13_10)if (cooldown <= 0)$(13_10){$(13_10)	var _kid = instance_create_layer(x,y,"Layer_bullet",o_fire_sequence_kid)$(13_10)	_kid.bullet_angle = other.bullet_angle$(13_10)	_kid.bullet_team = other.bullet_team$(13_10)	cooldown = 8;$(13_10)}$(13_10)$(13_10)cooldown -=1;$(13_10)$(13_10)var bouncing = 0.1;$(13_10)image_xscale = random_range(scale - bouncing,scale + bouncing);$(13_10)image_yscale = random_range(scale - bouncing,scale + bouncing);$(13_10)image_angle = bullet_angle - 90"
	direction = bullet_angle;
	if (bullet_team == fireteam.ALLY)
	{
		
		speed = bullet_spd;
		sprite_index = spr_fire_sequence_parent;
	} else 
	{
		speed = bullet_spd;
		sprite_index = spr_fire_sequence_parent_enemy;
	}
	
	if (cooldown <= 0)
	{
		var _kid = instance_create_layer(x,y,"Layer_bullet",o_fire_sequence_kid)
		_kid.bullet_angle = other.bullet_angle
		_kid.bullet_team = other.bullet_team
		cooldown = 8;
	}
	
	cooldown -=1;
	
	var bouncing = 0.1;
	image_xscale = random_range(scale - bouncing,scale + bouncing);
	image_yscale = random_range(scale - bouncing,scale + bouncing);
	image_angle = bullet_angle - 90
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 539C1E2D
else
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 79F76E6F
	/// @DnDParent : 539C1E2D
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10) stop_at_pause()"
	/// @description Execute Code
	 stop_at_pause()
}