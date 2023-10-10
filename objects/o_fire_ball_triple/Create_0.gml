/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 30FDF8A3
/// @DnDArgument : "code" "initial_x = x;$(13_10)initial_y = y;$(13_10)bullet_spd = 15;$(13_10)$(13_10)$(13_10)add_bullet_angle = 0;$(13_10)$(13_10)bullet_team = 0$(13_10)bullet_angle = 90;$(13_10)$(13_10)$(13_10)bullet_sprite = spr_fire_ball_enemy;$(13_10)$(13_10)bullet_amont = 3$(13_10)incremento_angulo = 50;$(13_10)angulo_tiro_atual=15;$(13_10)creator = 0$(13_10)creator_dir = 0$(13_10)$(13_10)//bullet_dmg_mtpl = 1$(13_10)//bullet_dmg = 1 * bullet_dmg_mtpl$(13_10)bullet_dmg = 0$(13_10)$(13_10)$(13_10)/*$(13_10)var bullet_ball_direction_var = creator.direction - (bullet_amont-1) * (angulo_tiro_atual/2);$(13_10)for (var i = 0;i < bullet_amont; ++i) $(13_10){$(13_10)	var _inst = instance_create_layer(creator.x,creator.y,"Layer_bullet",o_fire_ball);$(13_10)	with(_inst) $(13_10)	{$(13_10)		bullet_team = other.bullet_team;$(13_10)		bullet_angle = (bullet_ball_direction_var + (other.angulo_tiro_atual * i));$(13_10)		bullet_sprite = other.bullet_sprite$(13_10)	}$(13_10)					$(13_10)}$(13_10)*/$(13_10)$(13_10)if (bullet_team == fireteam.ALLY)$(13_10){$(13_10)	bullet_sprite = spr_fire_ball$(13_10)} else $(13_10){$(13_10)	bullet_sprite = spr_fire_ball_enemy;$(13_10)}$(13_10)$(13_10)if (bullet_team == fireteam.ALLY)$(13_10){$(13_10)	sprite_index = spr_fire_ball;$(13_10)} else $(13_10){$(13_10)	sprite_index = spr_fire_ball_enemy;$(13_10)}$(13_10)"
initial_x = x;
initial_y = y;
bullet_spd = 15;


add_bullet_angle = 0;

bullet_team = 0
bullet_angle = 90;


bullet_sprite = spr_fire_ball_enemy;

bullet_amont = 3
incremento_angulo = 50;
angulo_tiro_atual=15;
creator = 0
creator_dir = 0

//bullet_dmg_mtpl = 1
//bullet_dmg = 1 * bullet_dmg_mtpl
bullet_dmg = 0


/*
var bullet_ball_direction_var = creator.direction - (bullet_amont-1) * (angulo_tiro_atual/2);
for (var i = 0;i < bullet_amont; ++i) 
{
	var _inst = instance_create_layer(creator.x,creator.y,"Layer_bullet",o_fire_ball);
	with(_inst) 
	{
		bullet_team = other.bullet_team;
		bullet_angle = (bullet_ball_direction_var + (other.angulo_tiro_atual * i));
		bullet_sprite = other.bullet_sprite
	}
					
}
*/

if (bullet_team == fireteam.ALLY)
{
	bullet_sprite = spr_fire_ball
} else 
{
	bullet_sprite = spr_fire_ball_enemy;
}

if (bullet_team == fireteam.ALLY)
{
	sprite_index = spr_fire_ball;
} else 
{
	sprite_index = spr_fire_ball_enemy;
}
/**/