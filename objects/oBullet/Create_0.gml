/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1F92B652
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)initial_x = x;$(13_10)initial_y = y;$(13_10)$(13_10)bulletSpdCreator = 1;$(13_10)bulletSpd = 1 * bulletSpdCreator;$(13_10)$(13_10)bulletAngleCreator = 1; $(13_10)bulletAngle = 1 * bulletAngleCreator;$(13_10)add_bullet_angle = 0;$(13_10)$(13_10)bulletTeam = 0;$(13_10)creator = 0;$(13_10)//bullet_preset = firepattern.IN_LINE;$(13_10)$(13_10)scale = 0.6;$(13_10)image_xscale = scale;$(13_10)image_yscale = scale;$(13_10)image_alpha = 1;$(13_10)image_speed = 0;$(13_10)$(13_10)$(13_10)//sprite_bullet_ally = spr_fire_ball$(13_10)$(13_10)//if (bullet_team == fireteam.ALLY)$(13_10)//{$(13_10)//	sprite_index = spr_fire_ball;$(13_10)//} else $(13_10)//{$(13_10)//	sprite_index = spr_fire_ball_enemy;$(13_10)//}$(13_10)$(13_10)//bullet_dmg_mtpl = 1$(13_10)//bullet_dmg = 2 * bullet_dmg_mtpl$(13_10)bulletDmgCreator = 1;$(13_10)bulletDmg = 1 * bulletDmgCreator;$(13_10)$(13_10)straightBullet = {$(13_10)	x,$(13_10)	y,$(13_10)	bulletSpd : 10,$(13_10)	bulletAngle : direction,$(13_10)	bulletTeam : fireTeam.ALLY;$(13_10)	creator : self;$(13_10)	bulletImg : 0,$(13_10)	bulletScale : 2,$(13_10)	bulletDmg : 1,$(13_10)	$(13_10)	$(13_10)}$(13_10)"
/// @description Execute Code
initial_x = x;
initial_y = y;

bulletSpdCreator = 1;
bulletSpd = 1 * bulletSpdCreator;

bulletAngleCreator = 1; 
bulletAngle = 1 * bulletAngleCreator;
add_bullet_angle = 0;

bulletTeam = 0;
creator = 0;
//bullet_preset = firepattern.IN_LINE;

scale = 0.6;
image_xscale = scale;
image_yscale = scale;
image_alpha = 1;
image_speed = 0;


//sprite_bullet_ally = spr_fire_ball

//if (bullet_team == fireteam.ALLY)
//{
//	sprite_index = spr_fire_ball;
//} else 
//{
//	sprite_index = spr_fire_ball_enemy;
//}

//bullet_dmg_mtpl = 1
//bullet_dmg = 2 * bullet_dmg_mtpl
bulletDmgCreator = 1;
bulletDmg = 1 * bulletDmgCreator;

straightBullet = {
	x,
	y,
	bulletSpd : 10,
	bulletAngle : direction,
	bulletTeam : fireTeam.ALLY;
	creator : self;
	bulletImg : 0,
	bulletScale : 2,
	bulletDmg : 1,
	
	
}