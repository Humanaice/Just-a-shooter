/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7C8A48CA
/// @DnDArgument : "code" "if (global.gamePaused)$(13_10){$(13_10)	stop_at_pause()$(13_10)}$(13_10)else$(13_10){$(13_10)	if (can_move)$(13_10)	{$(13_10)		y += 2.5$(13_10)	}$(13_10)}$(13_10)$(13_10)image_xscale = scale;$(13_10)image_yscale = scale;$(13_10)$(13_10)$(13_10)if (upgrade_type == firetype.STRAIGHT)$(13_10){$(13_10)	sprite_index = sprite_upgrade$(13_10)	image_index = 0$(13_10)	$(13_10)} else if (upgrade_type == firetype.BIG_STRAIGHT)$(13_10){$(13_10)	sprite_index = sprite_upgrade$(13_10)	image_index = 3$(13_10)	$(13_10)}else if (upgrade_type == firetype.SEQUENCE)$(13_10){$(13_10)	sprite_index = sprite_upgrade$(13_10)	image_index = 6$(13_10)	$(13_10)}else if (upgrade_type == firetype.BALL)$(13_10){$(13_10)	sprite_index = sprite_upgrade$(13_10)	image_index = 1$(13_10)	$(13_10)}else if (upgrade_type == firetype.TRIPLE_BALL)$(13_10){$(13_10)	sprite_index = sprite_upgrade$(13_10)	image_index = 1$(13_10)	$(13_10)}else if (upgrade_type == firetype.GRANADE)$(13_10){$(13_10)	sprite_index = sprite_upgrade$(13_10)	image_index = 4$(13_10)	$(13_10)}else if (upgrade_type == firetype.BALL_GRANADE)$(13_10){$(13_10)	sprite_index = sprite_upgrade$(13_10)	image_index = 7$(13_10)$(13_10)}else if (upgrade_type == firetype.BOMERANG)$(13_10){$(13_10)	sprite_index = sprite_upgrade$(13_10)	image_index = 2$(13_10)$(13_10)}else if (upgrade_type == firetype.DNA)$(13_10){$(13_10)	sprite_index = sprite_upgrade$(13_10)	image_index = 5$(13_10)$(13_10)}else if (upgrade_type == firetype.HOMING)$(13_10){$(13_10)	sprite_index = sprite_upgrade$(13_10)	image_index = 8$(13_10)$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)"
if (global.gamePaused)
{
	stop_at_pause()
}
else
{
	if (can_move)
	{
		y += 2.5
	}
}

image_xscale = scale;
image_yscale = scale;


if (upgrade_type == firetype.STRAIGHT)
{
	sprite_index = sprite_upgrade
	image_index = 0
	
} else if (upgrade_type == firetype.BIG_STRAIGHT)
{
	sprite_index = sprite_upgrade
	image_index = 3
	
}else if (upgrade_type == firetype.SEQUENCE)
{
	sprite_index = sprite_upgrade
	image_index = 6
	
}else if (upgrade_type == firetype.BALL)
{
	sprite_index = sprite_upgrade
	image_index = 1
	
}else if (upgrade_type == firetype.TRIPLE_BALL)
{
	sprite_index = sprite_upgrade
	image_index = 1
	
}else if (upgrade_type == firetype.GRANADE)
{
	sprite_index = sprite_upgrade
	image_index = 4
	
}else if (upgrade_type == firetype.BALL_GRANADE)
{
	sprite_index = sprite_upgrade
	image_index = 7

}else if (upgrade_type == firetype.BOMERANG)
{
	sprite_index = sprite_upgrade
	image_index = 2

}else if (upgrade_type == firetype.DNA)
{
	sprite_index = sprite_upgrade
	image_index = 5

}else if (upgrade_type == firetype.HOMING)
{
	sprite_index = sprite_upgrade
	image_index = 8

}