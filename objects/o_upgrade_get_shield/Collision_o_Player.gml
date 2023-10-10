/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 08CE60EB
/// @DnDApplyTo : other
/// @DnDArgument : "function" "o_Player.create_shield"
with(other) {
	o_Player.create_shield();
}

/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
/// @DnDVersion : 1.1
/// @DnDHash : 717634D4
/// @DnDArgument : "sound" "snd_pickup_1"
/// @DnDArgument : "volume" "random_range(0.3,0.5)"
audio_sound_gain(snd_pickup_1, random_range(0.3,0.5), 0);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 098B5B0A
/// @DnDArgument : "soundid" "snd_pickup_1"
audio_play_sound(snd_pickup_1, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 20239947
instance_destroy();