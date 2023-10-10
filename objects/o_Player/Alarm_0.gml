/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 77000872
/// @DnDArgument : "code" "/// @alarm to count how many times it has to blink$(13_10)blink=false$(13_10)blink_counter++;$(13_10)flash += -0.05$(13_10)$(13_10)if (blink_counter < blink_number_of_blinks)$(13_10){$(13_10)	alarm[1] = blink_duration$(13_10)}else{$(13_10)	blink_counter = 0$(13_10)	flash = 1$(13_10)}$(13_10)$(13_10)"
/// @alarm to count how many times it has to blink
blink=false
blink_counter++;
flash += -0.05

if (blink_counter < blink_number_of_blinks)
{
	alarm[1] = blink_duration
}else{
	blink_counter = 0
	flash = 1
}