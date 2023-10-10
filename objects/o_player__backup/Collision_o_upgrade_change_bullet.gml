/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 23C60F98
/// @DnDArgument : "code" "current_upgrade_bullet = 0$(13_10)if (current_player_bullet_type == firetype.STRAIGHT) {$(13_10)	current_player_bullet_type = firetype.BALL$(13_10)	instance_destroy(other);$(13_10)	player_fire_cool = 0$(13_10)} else if (current_player_bullet_type == firetype.BALL){$(13_10)	current_player_bullet_type = firetype.BOMERANG;$(13_10)	instance_destroy(other);$(13_10)	player_fire_cool = 0$(13_10)} else if (current_player_bullet_type == firetype.BOMERANG){$(13_10)	current_player_bullet_type = firetype.RAYLASER;$(13_10)	instance_destroy(other);$(13_10)	player_fire_cool = 0$(13_10)} else if (current_player_bullet_type == firetype.RAYLASER){$(13_10)	current_player_bullet_type = firetype.STRAIGHT;$(13_10)	instance_destroy(other);$(13_10)	player_fire_cool = 0$(13_10)}$(13_10)"
current_upgrade_bullet = 0
if (current_player_bullet_type == firetype.STRAIGHT) {
	current_player_bullet_type = firetype.BALL
	instance_destroy(other);
	player_fire_cool = 0
} else if (current_player_bullet_type == firetype.BALL){
	current_player_bullet_type = firetype.BOMERANG;
	instance_destroy(other);
	player_fire_cool = 0
} else if (current_player_bullet_type == firetype.BOMERANG){
	current_player_bullet_type = firetype.RAYLASER;
	instance_destroy(other);
	player_fire_cool = 0
} else if (current_player_bullet_type == firetype.RAYLASER){
	current_player_bullet_type = firetype.STRAIGHT;
	instance_destroy(other);
	player_fire_cool = 0
}

/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
/// @DnDVersion : 1.1
/// @DnDHash : 7087A806
/// @DnDArgument : "sound" "snd_pickup_2"
/// @DnDArgument : "volume" "random_range(0.7,1.5)"
audio_sound_gain(snd_pickup_2, random_range(0.7,1.5), 0);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 397E27BB
/// @DnDArgument : "soundid" "snd_pickup_2"
audio_play_sound(snd_pickup_2, 0, 0);