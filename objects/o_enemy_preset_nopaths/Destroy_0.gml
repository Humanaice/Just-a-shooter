/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 4BBA34E5
event_inherited();

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6E4FBBB4
/// @DnDDisabled : 1
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (can_explode_bullets)$(13_10){$(13_10)	for (var i = 0;i < fire_ball_explode_amount;i++)$(13_10)	{$(13_10)		var _bullet = instance_create_layer(x,y,"Layer_bullet",o_fire_ball)$(13_10)		with (_bullet)$(13_10)		{$(13_10)			bullet_team = fireteam.ENEMY;$(13_10)			sprite_index = spr_fire_ball_enemy;$(13_10)			bullet_angle = other.fire_ball_explode_dir;$(13_10)			bullet_preset = firepattern.HOMING;$(13_10)		}$(13_10)		fire_ball_explode_dir += add_fire_ball_explode_dir;$(13_10)	}$(13_10)}$(13_10)$(13_10)var _item = irandom(100)$(13_10)var _upgrades = [o_upgrade,o_upgrade_get_shield,o_upgrade_change_bullet,o_upgrade_health]$(13_10)$(13_10)if (_item <= 40)$(13_10){$(13_10)	instance_create_layer(x,y,"Layer_upgrade",_upgrades[irandom(3)])$(13_10)}"