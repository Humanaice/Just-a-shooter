/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6E1D5251
/// @DnDArgument : "code" "hpcurrent +=1;$(13_10)instance_destroy(other);"
hpcurrent +=1;
instance_destroy(other);

/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
/// @DnDVersion : 1.1
/// @DnDHash : 19A887AC
/// @DnDArgument : "sound" "snd_pickup_2"
/// @DnDArgument : "volume" "random_range(0.7,1.5)"
/// @DnDSaveInfo : "sound" "snd_pickup_2"
audio_sound_gain(snd_pickup_2, random_range(0.7,1.5), 0);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 39872C1F
/// @DnDArgument : "soundid" "snd_pickup_2"
/// @DnDSaveInfo : "soundid" "snd_pickup_2"
audio_play_sound(snd_pickup_2, 0, 0, 1.0, undefined, 1.0);