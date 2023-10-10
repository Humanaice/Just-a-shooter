/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 34239ADF
/// @DnDArgument : "code" "/// @Player Varriables$(13_10)$(13_10)///State$(13_10)//plrState = playerState.IDLE;$(13_10)$(13_10)///Movement$(13_10)//spd:: quantos pixels ele se move$(13_10)//hspd: spd do player hz$(13_10)//vspd: spd do player vt$(13_10)//bspd: a base da velocidade de um objeto$(13_10)spd=bspd;$(13_10)dhspeed = 0; //direção na horizontal (-1 esq,1 dir)$(13_10)dvspeed = 0; //direção na vertical (-1 cima,1 baixo)$(13_10)dagspd = round(spd * ((sqrt(2)) / 2)); //spd so que nas diagonais$(13_10)$(13_10)direction = 90; // colocando ponto direcional para cima$(13_10)player_direction = direction; // guardando o valor da direção$(13_10)$(13_10)//Dash$(13_10)dash = false$(13_10)dashspd = spd * 2; //dash speed$(13_10)coolDash = 0; //cooldown do dash$(13_10)coolDashMax = 30;$(13_10)canDash  = true; $(13_10)dashing = false;$(13_10)dashingSteps = 0; // A state variable to keep track of how many steps remain for a given dash$(13_10)dashMaxDuration = 5; // Any dash will last for this many steps$(13_10)$(13_10)"
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