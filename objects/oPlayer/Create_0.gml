/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 34239ADF
/// @DnDArgument : "code" "/// @Player Varriables$(13_10)$(13_10)///State$(13_10)//plrState = playerState.IDLE;$(13_10)$(13_10)///Movement$(13_10)//spd:: quantos pixels ele se move$(13_10)//hspd: spd do player hz$(13_10)//vspd: spd do player vt$(13_10)//bspd: a base da velocidade de um objeto$(13_10)spd=bspd;$(13_10)dhspeed = 0; //direção na horizontal (-1 esq,1 dir)$(13_10)dvspeed = 0; //direção na vertical (-1 cima,1 baixo)$(13_10)dagspd = round(spd * ((sqrt(2)) / 2)); //spd so que nas diagonais$(13_10)$(13_10)direction = 90; // colocando ponto direcional para cima$(13_10)player_direction = direction; // guardando o valor da direção$(13_10)$(13_10)//Dash$(13_10)dash = false$(13_10)dashspd = spd * 2; //dash speed$(13_10)coolDash = 0; //cooldown do dash$(13_10)coolDashMax = 30;$(13_10)canDash  = true; $(13_10)dashing = false;$(13_10)dashingSteps = 0; // A state variable to keep track of how many steps remain for a given dash$(13_10)dashMaxDuration = 5; // Any dash will last for this many steps$(13_10)$(13_10)playerfire = false;$(13_10)player_fire_cool = 0;$(13_10)player_fire_short_cool=10;$(13_10)player_fire_medium_cool = 25;$(13_10)player_fire_long_cool=50;$(13_10)player_fire_very_long_cool=100;$(13_10)//player_default_bullet_type = firetype.STRAIGHT;$(13_10)//current_player_bullet_type = player_default_bullet_type;$(13_10)upgrade_bullet=0;$(13_10)current_upgrade_bullet=upgrade_bullet;$(13_10)bullet_amont = 3;$(13_10)player_bullet_damage = 2$(13_10)player_bullet_damage_mult = [1,1,1]$(13_10)player_bullet_cooldown = [0,0,0]$(13_10)player_bullet_add_cooldown = [5,10,10]$(13_10)$(13_10)//ds_fire_type_list  = ds_list_create();$(13_10)//listFireType = [$(13_10)//[1,5,10,],$(13_10)//[5,5,5],$(13_10)//[10,5,20]$(13_10)//];$(13_10)listFireType = [oBullet.straightBullet,oNothing,oNothing]$(13_10)ds_fire_weapon_selected = [true,false,false]$(13_10)$(13_10)incremento_angulo = 2;$(13_10)angulo_tiro_atual=30;"
/// @Player Varriables

///State
//plrState = playerState.IDLE;

///Movement
//spd:: quantos pixels ele se move
//hspd: spd do player hz
//vspd: spd do player vt
//bspd: a base da velocidade de um objeto
spd=bspd;
dhspeed = 0; //direção na horizontal (-1 esq,1 dir)
dvspeed = 0; //direção na vertical (-1 cima,1 baixo)
dagspd = round(spd * ((sqrt(2)) / 2)); //spd so que nas diagonais

direction = 90; // colocando ponto direcional para cima
player_direction = direction; // guardando o valor da direção

//Dash
dash = false
dashspd = spd * 2; //dash speed
coolDash = 0; //cooldown do dash
coolDashMax = 30;
canDash  = true; 
dashing = false;
dashingSteps = 0; // A state variable to keep track of how many steps remain for a given dash
dashMaxDuration = 5; // Any dash will last for this many steps

playerfire = false;
player_fire_cool = 0;
player_fire_short_cool=10;
player_fire_medium_cool = 25;
player_fire_long_cool=50;
player_fire_very_long_cool=100;
//player_default_bullet_type = firetype.STRAIGHT;
//current_player_bullet_type = player_default_bullet_type;
upgrade_bullet=0;
current_upgrade_bullet=upgrade_bullet;
bullet_amont = 3;
player_bullet_damage = 2
player_bullet_damage_mult = [1,1,1]
player_bullet_cooldown = [0,0,0]
player_bullet_add_cooldown = [5,10,10]

//ds_fire_type_list  = ds_list_create();
//listFireType = [
//[1,5,10,],
//[5,5,5],
//[10,5,20]
//];
listFireType = [oBullet.straightBullet,oNothing,oNothing]
ds_fire_weapon_selected = [true,false,false]

incremento_angulo = 2;
angulo_tiro_atual=30;