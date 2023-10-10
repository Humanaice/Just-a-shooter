/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0C01E208
/// @DnDArgument : "code" "/*$(13_10)if (enemy_hpnow <= 0)$(13_10){$(13_10)	instance_create_layer(x,y,"Layer_effects",o_explosion)$(13_10)	audio_sound_gain(sf_laser_explosion,2,0)$(13_10)	audio_play_sound(sf_laser_explosion,1,false)$(13_10)	instance_destroy()$(13_10)}$(13_10)*/$(13_10)instance_create_layer(x,y,"Layer_effects",o_explosion)$(13_10)audio_sound_gain(sf_laser_explosion,2,0)$(13_10)audio_play_sound(sf_laser_explosion,1,false)$(13_10)$(13_10)if (can_explode_bullets)$(13_10){$(13_10)	for (var i = 0;i < fire_ball_explode_amount;i++)$(13_10)	{$(13_10)		var _bullet = instance_create_layer(x,y,"Layer_bullet",o_fire_ball)$(13_10)		with (_bullet)$(13_10)		{$(13_10)			bullet_team = fireteam.ENEMY;$(13_10)			sprite_index = spr_fire_ball_enemy;$(13_10)			bullet_angle = other.fire_ball_explode_dir;$(13_10)			bullet_preset = firepattern.HOMING;$(13_10)		}$(13_10)		fire_ball_explode_dir += add_fire_ball_explode_dir;$(13_10)	}$(13_10)}$(13_10)$(13_10)var _item1 = irandom(100)$(13_10)var _item2 = irandom(100)$(13_10)var _upgrades_change_bullet = [o_upgrade_general]$(13_10)var _upgrades = [o_upgrade_get_shield,o_upgrade_health]$(13_10)$(13_10)if (_item1 <= 25)$(13_10){$(13_10)	var _inst_item = instance_create_layer(x,y,"Layer_upgrade",_upgrades[irandom(1)])$(13_10)	_inst_item.can_move = true$(13_10)}$(13_10)$(13_10)if (_item2 <= 10)$(13_10){$(13_10)	var _inst_item = instance_create_layer(x,y,"Layer_upgrade",_upgrades_change_bullet[irandom(0)])$(13_10)	_inst_item.can_move = true$(13_10)	_inst_item.upgrade_type = other.enemy_fire_type$(13_10)}$(13_10)"
/*
if (enemy_hpnow <= 0)
{
	instance_create_layer(x,y,"Layer_effects",o_explosion)
	audio_sound_gain(sf_laser_explosion,2,0)
	audio_play_sound(sf_laser_explosion,1,false)
	instance_destroy()
}
*/
instance_create_layer(x,y,"Layer_effects",o_explosion)
audio_sound_gain(sf_laser_explosion,2,0)
audio_play_sound(sf_laser_explosion,1,false)

if (can_explode_bullets)
{
	for (var i = 0;i < fire_ball_explode_amount;i++)
	{
		var _bullet = instance_create_layer(x,y,"Layer_bullet",o_fire_ball)
		with (_bullet)
		{
			bullet_team = fireteam.ENEMY;
			sprite_index = spr_fire_ball_enemy;
			bullet_angle = other.fire_ball_explode_dir;
			bullet_preset = firepattern.HOMING;
		}
		fire_ball_explode_dir += add_fire_ball_explode_dir;
	}
}

var _item1 = irandom(100)
var _item2 = irandom(100)
var _upgrades_change_bullet = [o_upgrade_general]
var _upgrades = [o_upgrade_get_shield,o_upgrade_health]

if (_item1 <= 25)
{
	var _inst_item = instance_create_layer(x,y,"Layer_upgrade",_upgrades[irandom(1)])
	_inst_item.can_move = true
}

if (_item2 <= 10)
{
	var _inst_item = instance_create_layer(x,y,"Layer_upgrade",_upgrades_change_bullet[irandom(0)])
	_inst_item.can_move = true
	_inst_item.upgrade_type = other.enemy_fire_type
}
/**/