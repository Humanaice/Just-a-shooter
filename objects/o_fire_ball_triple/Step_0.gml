/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 401E27BB
event_inherited();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6C956EC8
/// @DnDArgument : "var" "global.gamePaused"
/// @DnDArgument : "value" "false"
if(global.gamePaused == false)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 12817D3B
	/// @DnDParent : 6C956EC8
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)//if (bullet_team == fireteam.ENEMY$(13_10)$(13_10)if (bullet_team == fireteam.ALLY)$(13_10){$(13_10)	bullet_sprite = spr_fire_ball$(13_10)} else $(13_10){$(13_10)	bullet_sprite = spr_fire_ball_enemy;$(13_10)}$(13_10)$(13_10)if (bullet_team == fireteam.ALLY)$(13_10){$(13_10)	sprite_index = spr_fire_ball;$(13_10)} else $(13_10){$(13_10)	sprite_index = spr_fire_ball_enemy;$(13_10)}$(13_10)$(13_10)var bullet_ball_direction_var = bullet_angle - (bullet_amont-1) * (angulo_tiro_atual/2);$(13_10)for (var i = 0;i < bullet_amont; ++i) $(13_10){$(13_10)	var _inst = instance_create_layer(creator.x,creator.y,"Layer_bullet",o_fire_ball);$(13_10)	with(_inst) $(13_10)	{$(13_10)		bullet_team = other.bullet_team;$(13_10)		bullet_angle = (bullet_ball_direction_var + (other.angulo_tiro_atual * i));$(13_10)		bullet_sprite = other.sprite_index$(13_10)		bullet_dmg = other.bullet_dmg$(13_10)	}$(13_10)					$(13_10)}$(13_10)instance_destroy()"
	/// @description Execute Code
	//if (bullet_team == fireteam.ENEMY
	
	if (bullet_team == fireteam.ALLY)
	{
		bullet_sprite = spr_fire_ball
	} else 
	{
		bullet_sprite = spr_fire_ball_enemy;
	}
	
	if (bullet_team == fireteam.ALLY)
	{
		sprite_index = spr_fire_ball;
	} else 
	{
		sprite_index = spr_fire_ball_enemy;
	}
	
	var bullet_ball_direction_var = bullet_angle - (bullet_amont-1) * (angulo_tiro_atual/2);
	for (var i = 0;i < bullet_amont; ++i) 
	{
		var _inst = instance_create_layer(creator.x,creator.y,"Layer_bullet",o_fire_ball);
		with(_inst) 
		{
			bullet_team = other.bullet_team;
			bullet_angle = (bullet_ball_direction_var + (other.angulo_tiro_atual * i));
			bullet_sprite = other.sprite_index
			bullet_dmg = other.bullet_dmg
		}
						
	}
	instance_destroy()
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 091B85D3
/// @DnDDisabled : 1
/// @DnDArgument : "code" "direction = bullet_angle;$(13_10)speed = bullet_spd;$(13_10)var bouncing = 0.1;$(13_10)image_xscale = random_range(scale - bouncing,scale + bouncing);$(13_10)image_yscale = random_range(scale - bouncing,scale + bouncing);$(13_10)$(13_10)$(13_10)"


/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 3959E266
instance_destroy();