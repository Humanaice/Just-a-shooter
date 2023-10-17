/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1B184238
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)direction = bulletAngle;$(13_10)speed = bulletSpd;$(13_10)var bouncing = 0.1;$(13_10)image_xscale = random_range(scale - bouncing,scale + bouncing);$(13_10)image_yscale = random_range(scale - bouncing,scale + bouncing);$(13_10)$(13_10)//if (bullet_team == fireteam.ALLY)$(13_10)//{$(13_10)//	sprite_index = sprite_bullet_ally;$(13_10)//} else $(13_10)//{$(13_10)//	sprite_index = spr_fire_ball_enemy;$(13_10)//}"
/// @description Execute Code
direction = bulletAngle;
speed = bulletSpd;
var bouncing = 0.1;
image_xscale = random_range(scale - bouncing,scale + bouncing);
image_yscale = random_range(scale - bouncing,scale + bouncing);

//if (bullet_team == fireteam.ALLY)
//{
//	sprite_index = sprite_bullet_ally;
//} else 
//{
//	sprite_index = spr_fire_ball_enemy;
//}