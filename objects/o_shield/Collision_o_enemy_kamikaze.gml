/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 0EDC760C
/// @DnDArgument : "xpos" "other.x"
/// @DnDArgument : "ypos" "other.y"
/// @DnDArgument : "objectid" "o_explosion"
/// @DnDArgument : "layer" ""Layer_effects""
/// @DnDSaveInfo : "objectid" "o_explosion"
instance_create_layer(other.x, other.y, "Layer_effects", o_explosion);

/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
/// @DnDVersion : 1
/// @DnDHash : 38D3EEE7
/// @DnDArgument : "sound" "sf_laser_explosion"
/// @DnDArgument : "volume" "2"
/// @DnDSaveInfo : "sound" "sf_laser_explosion"
audio_sound_gain(sf_laser_explosion, 2, 0);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 03E3D213
/// @DnDArgument : "soundid" "sf_laser_explosion"
/// @DnDSaveInfo : "soundid" "sf_laser_explosion"
audio_play_sound(sf_laser_explosion, 0, 0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 3BCD80B1
/// @DnDApplyTo : other
with(other) instance_destroy();