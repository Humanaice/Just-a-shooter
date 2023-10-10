/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2DD394C6
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var _bullet = instance_create_layer(x,y,"Layer_bullet",o_fire_explosion_shock)$(13_10)with (_bullet)$(13_10){$(13_10)	bullet_team = other.bullet_team$(13_10)	//sprite_index = other.sprite_index;$(13_10)			$(13_10)}$(13_10)$(13_10)$(13_10)"
/// @description Execute Code
var _bullet = instance_create_layer(x,y,"Layer_bullet",o_fire_explosion_shock)
with (_bullet)
{
	bullet_team = other.bullet_team
	//sprite_index = other.sprite_index;
			
}