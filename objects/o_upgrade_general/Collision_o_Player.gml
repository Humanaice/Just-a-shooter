/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 01F0B21C
/// @DnDArgument : "code" "if (upgrade_type == firetype.STRAIGHT)$(13_10){$(13_10)	with (o_Player)$(13_10)	{$(13_10)		ds_fire_type_list[0] = o_fire_straight$(13_10)		player_bullet_damage = 1$(13_10)		player_bullet_add_cooldown[0] = 2$(13_10)	}$(13_10)	$(13_10)} else if (upgrade_type == firetype.BIG_STRAIGHT)$(13_10){$(13_10)	$(13_10)	with (o_Player)$(13_10)	{$(13_10)		ds_fire_type_list[0] = o_fire_big_straight$(13_10)		player_bullet_damage = 7$(13_10)		player_bullet_add_cooldown[0] = 15$(13_10)	}$(13_10)	$(13_10)}else if (upgrade_type == firetype.SEQUENCE)$(13_10){$(13_10)	$(13_10)	with (o_Player)$(13_10)	{$(13_10)		ds_fire_type_list[0] = o_fire_sequence_parent$(13_10)		player_bullet_damage = 5$(13_10)		player_bullet_add_cooldown[0] = 13$(13_10)	}$(13_10)	$(13_10)}else if (upgrade_type == firetype.BALL)$(13_10){$(13_10)	with (o_Player)$(13_10)	{$(13_10)		ds_fire_type_list[1] = o_fire_ball$(13_10)		player_bullet_damage = 2$(13_10)		player_bullet_add_cooldown[1] = 4$(13_10)	}$(13_10)	$(13_10)}else if (upgrade_type == firetype.TRIPLE_BALL)$(13_10){$(13_10)	$(13_10)	with (o_Player)$(13_10)	{$(13_10)		ds_fire_type_list[1] = o_fire_ball_triple$(13_10)		player_bullet_damage = 2.5$(13_10)		player_bullet_add_cooldown[1] = 12$(13_10)	}$(13_10)	$(13_10)}else if (upgrade_type == firetype.GRANADE)$(13_10){$(13_10)	$(13_10)	with (o_Player)$(13_10)	{$(13_10)		ds_fire_type_list[1] = o_fire_explosion_grenade$(13_10)		player_bullet_damage = 6$(13_10)		player_bullet_add_cooldown[1] = 10$(13_10)	}$(13_10)	$(13_10)}else if (upgrade_type == firetype.BALL_GRANADE)$(13_10){$(13_10)	$(13_10)	with (o_Player)$(13_10)	{$(13_10)		ds_fire_type_list[1] = o_fire_explosion_ball$(13_10)		player_bullet_damage = 4$(13_10)		player_bullet_add_cooldown[1] = 15$(13_10)	}$(13_10)	$(13_10)}else if (upgrade_type == firetype.BOMERANG)$(13_10){$(13_10)	$(13_10)	with (o_Player)$(13_10)	{$(13_10)		ds_fire_type_list[2] = o_fire_bommerang$(13_10)		player_bullet_damage = 1$(13_10)		player_bullet_add_cooldown[2] = 8$(13_10)	}$(13_10)	$(13_10)}else if (upgrade_type == firetype.DNA)$(13_10){$(13_10)	$(13_10)	with (o_Player)$(13_10)	{$(13_10)		ds_fire_type_list[2] = o_fire_dna_creator$(13_10)		player_bullet_damage = 3$(13_10)		player_bullet_add_cooldown[2] = 15$(13_10)	}$(13_10)	$(13_10)}else if (upgrade_type == firetype.HOMING)$(13_10){$(13_10)	$(13_10)	with (o_Player)$(13_10)	{$(13_10)		ds_fire_type_list[2] = o_fire_star_homing_missile$(13_10)		player_bullet_damage = 1.5$(13_10)		player_bullet_add_cooldown[2] = 7$(13_10)	}$(13_10)	$(13_10)}$(13_10)$(13_10)instance_destroy()$(13_10)$(13_10)$(13_10)"
if (upgrade_type == firetype.STRAIGHT)
{
	with (o_Player)
	{
		ds_fire_type_list[0] = o_fire_straight
		player_bullet_damage = 1
		player_bullet_add_cooldown[0] = 2
	}
	
} else if (upgrade_type == firetype.BIG_STRAIGHT)
{
	
	with (o_Player)
	{
		ds_fire_type_list[0] = o_fire_big_straight
		player_bullet_damage = 7
		player_bullet_add_cooldown[0] = 15
	}
	
}else if (upgrade_type == firetype.SEQUENCE)
{
	
	with (o_Player)
	{
		ds_fire_type_list[0] = o_fire_sequence_parent
		player_bullet_damage = 5
		player_bullet_add_cooldown[0] = 13
	}
	
}else if (upgrade_type == firetype.BALL)
{
	with (o_Player)
	{
		ds_fire_type_list[1] = o_fire_ball
		player_bullet_damage = 2
		player_bullet_add_cooldown[1] = 4
	}
	
}else if (upgrade_type == firetype.TRIPLE_BALL)
{
	
	with (o_Player)
	{
		ds_fire_type_list[1] = o_fire_ball_triple
		player_bullet_damage = 2.5
		player_bullet_add_cooldown[1] = 12
	}
	
}else if (upgrade_type == firetype.GRANADE)
{
	
	with (o_Player)
	{
		ds_fire_type_list[1] = o_fire_explosion_grenade
		player_bullet_damage = 6
		player_bullet_add_cooldown[1] = 10
	}
	
}else if (upgrade_type == firetype.BALL_GRANADE)
{
	
	with (o_Player)
	{
		ds_fire_type_list[1] = o_fire_explosion_ball
		player_bullet_damage = 4
		player_bullet_add_cooldown[1] = 15
	}
	
}else if (upgrade_type == firetype.BOMERANG)
{
	
	with (o_Player)
	{
		ds_fire_type_list[2] = o_fire_bommerang
		player_bullet_damage = 1
		player_bullet_add_cooldown[2] = 8
	}
	
}else if (upgrade_type == firetype.DNA)
{
	
	with (o_Player)
	{
		ds_fire_type_list[2] = o_fire_dna_creator
		player_bullet_damage = 3
		player_bullet_add_cooldown[2] = 15
	}
	
}else if (upgrade_type == firetype.HOMING)
{
	
	with (o_Player)
	{
		ds_fire_type_list[2] = o_fire_star_homing_missile
		player_bullet_damage = 1.5
		player_bullet_add_cooldown[2] = 7
	}
	
}

instance_destroy()

/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
/// @DnDVersion : 1.1
/// @DnDHash : 44801512
/// @DnDArgument : "sound" "snd_pickup_2"
/// @DnDArgument : "volume" "random_range(0.3,0.5)"
audio_sound_gain(snd_pickup_2, random_range(0.3,0.5), 0);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 3E9D5772
/// @DnDArgument : "soundid" "snd_pickup_2"
audio_play_sound(snd_pickup_2, 0, 0, 1.0, undefined, 1.0);