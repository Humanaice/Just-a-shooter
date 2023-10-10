/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 40FBF025
/// @DnDArgument : "funcName" "scr_enemy_type"
function scr_enemy_type() 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 36A818F8
	/// @DnDParent : 40FBF025
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (enemy_fire_type == firetype.STRAIGHT)$(13_10){$(13_10)	sprite_index = spr_spsh_enemy_red_complete$(13_10)	image_index = 0$(13_10)	fire_type = o_fire_straight$(13_10)	$(13_10)} else if (enemy_fire_type == firetype.BIG_STRAIGHT)$(13_10){$(13_10)	sprite_index = spr_spsh_enemy_green_complete$(13_10)	image_index = 0$(13_10)	fire_type = o_fire_big_straight$(13_10)	$(13_10)}else if (enemy_fire_type == firetype.SEQUENCE)$(13_10){$(13_10)	sprite_index = spr_spsh_enemy_blue_complete$(13_10)	image_index = 0$(13_10)	fire_type = o_fire_sequence_parent$(13_10)	$(13_10)}else if (enemy_fire_type == firetype.BALL)$(13_10){$(13_10)	sprite_index = spr_spsh_enemy_red_complete$(13_10)	image_index = 1$(13_10)	fire_type = o_fire_ball$(13_10)	$(13_10)}else if (enemy_fire_type == firetype.TRIPLE_BALL)$(13_10){$(13_10)	sprite_index = spr_spsh_enemy_red_complete$(13_10)	image_index = 1$(13_10)	fire_type = o_fire_ball_triple$(13_10)	$(13_10)}else if (enemy_fire_type == firetype.GRANADE)$(13_10){$(13_10)	sprite_index = spr_spsh_enemy_blue_complete$(13_10)	image_index = 1$(13_10)	fire_type = o_fire_explosion_grenade$(13_10)	$(13_10)}else if (enemy_fire_type == firetype.BALL_GRANADE)$(13_10){$(13_10)	sprite_index = spr_spsh_enemy_green_complete$(13_10)	image_index = 1$(13_10)	fire_type = o_fire_explosion_ball$(13_10)$(13_10)}else if (enemy_fire_type == firetype.BOMERANG)$(13_10){$(13_10)	sprite_index = spr_spsh_enemy_red_complete$(13_10)	image_index = 2$(13_10)	fire_type = o_fire_bommerang$(13_10)$(13_10)}else if (enemy_fire_type == firetype.DNA)$(13_10){$(13_10)	sprite_index = spr_spsh_enemy_green_complete$(13_10)	image_index = 2$(13_10)	fire_type = o_fire_dna_creator$(13_10)$(13_10)}else if (enemy_fire_type == firetype.HOMING)$(13_10){$(13_10)	sprite_index = spr_spsh_enemy_blue_complete$(13_10)	image_index = 2$(13_10)	fire_type = o_fire_star_homing_missile$(13_10)$(13_10)}"
	/// @description Execute Code
	if (enemy_fire_type == firetype.STRAIGHT)
	{
		sprite_index = spr_spsh_enemy_red_complete
		image_index = 0
		fire_type = o_fire_straight
		
	} else if (enemy_fire_type == firetype.BIG_STRAIGHT)
	{
		sprite_index = spr_spsh_enemy_green_complete
		image_index = 0
		fire_type = o_fire_big_straight
		
	}else if (enemy_fire_type == firetype.SEQUENCE)
	{
		sprite_index = spr_spsh_enemy_blue_complete
		image_index = 0
		fire_type = o_fire_sequence_parent
		
	}else if (enemy_fire_type == firetype.BALL)
	{
		sprite_index = spr_spsh_enemy_red_complete
		image_index = 1
		fire_type = o_fire_ball
		
	}else if (enemy_fire_type == firetype.TRIPLE_BALL)
	{
		sprite_index = spr_spsh_enemy_red_complete
		image_index = 1
		fire_type = o_fire_ball_triple
		
	}else if (enemy_fire_type == firetype.GRANADE)
	{
		sprite_index = spr_spsh_enemy_blue_complete
		image_index = 1
		fire_type = o_fire_explosion_grenade
		
	}else if (enemy_fire_type == firetype.BALL_GRANADE)
	{
		sprite_index = spr_spsh_enemy_green_complete
		image_index = 1
		fire_type = o_fire_explosion_ball
	
	}else if (enemy_fire_type == firetype.BOMERANG)
	{
		sprite_index = spr_spsh_enemy_red_complete
		image_index = 2
		fire_type = o_fire_bommerang
	
	}else if (enemy_fire_type == firetype.DNA)
	{
		sprite_index = spr_spsh_enemy_green_complete
		image_index = 2
		fire_type = o_fire_dna_creator
	
	}else if (enemy_fire_type == firetype.HOMING)
	{
		sprite_index = spr_spsh_enemy_blue_complete
		image_index = 2
		fire_type = o_fire_star_homing_missile
	
	}
}