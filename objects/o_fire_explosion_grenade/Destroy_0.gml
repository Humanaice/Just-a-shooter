/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3792208C
/// @DnDArgument : "code" "for (var i = 0;i < ignite_ball_amount;i++)$(13_10)	{$(13_10)		var _bullet = instance_create_layer(x,y,"Layer_bullet",o_fire_ball)$(13_10)		with (_bullet)$(13_10)		{$(13_10)			bullet_team = other.bullet_team$(13_10)			bullet_angle = other.ignite_ball_dir;$(13_10)			speed = bullet_spd$(13_10)			sprite_bullet_ally = other.sprite_bullet_ally;$(13_10)			$(13_10)		}$(13_10)		ignite_ball_dir += add_ignite_ball_dir;$(13_10)	}"
for (var i = 0;i < ignite_ball_amount;i++)
	{
		var _bullet = instance_create_layer(x,y,"Layer_bullet",o_fire_ball)
		with (_bullet)
		{
			bullet_team = other.bullet_team
			bullet_angle = other.ignite_ball_dir;
			speed = bullet_spd
			sprite_bullet_ally = other.sprite_bullet_ally;
			
		}
		ignite_ball_dir += add_ignite_ball_dir;
	}