/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6A26FBB9
/// @DnDArgument : "code" "scale = 1$(13_10)image_yscale = scale$(13_10)image_yscale = scale$(13_10)image_alpha = 0.9$(13_10)$(13_10)if (o_Player.current_upgrade_bullet == 0)$(13_10){$(13_10)	sprite_index = spr_muzzle_fire_red$(13_10)} else if (o_Player.current_upgrade_bullet == 1)$(13_10){$(13_10)	sprite_index = spr_muzzle_fire_green$(13_10)} else if (o_Player.current_upgrade_bullet == 2)$(13_10){$(13_10)	sprite_index = spr_muzzle_fire_blue$(13_10)}"
scale = 1
image_yscale = scale
image_yscale = scale
image_alpha = 0.9

if (o_Player.current_upgrade_bullet == 0)
{
	sprite_index = spr_muzzle_fire_red
} else if (o_Player.current_upgrade_bullet == 1)
{
	sprite_index = spr_muzzle_fire_green
} else if (o_Player.current_upgrade_bullet == 2)
{
	sprite_index = spr_muzzle_fire_blue
}