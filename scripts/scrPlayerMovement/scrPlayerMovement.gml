/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 7351CF70
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scrPlayerMovement"
function scrPlayerMovement() 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 69FC1CE1
	/// @DnDParent : 7351CF70
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)script_execute(scrPlayerInput); //Pega os inputs $(13_10)$(13_10)//Subtrai o resultado, impossibilitando a possibilidade de dar problema ao teclar$(13_10)//duas teclas da mesma direção -> Resulta na direção de movimento$(13_10)dhspeed = rightkey - leftkey; //-1 Esquerda : 1 Direita$(13_10)dvspeed = downkey - upkey; //-1 cima : 1 baixo$(13_10)$(13_10)//Atribui a direçâo com spd para resolver quantos pixels e para qual direção o player$(13_10)//ira se mover$(13_10)hspd = dhspeed*spd;$(13_10)vspd = dvspeed*spd;$(13_10)$(13_10)//se o player esta se movendo para horizontalmente e verticalmente ao mesmo tempo$(13_10)if (dhspeed != 0) and (dvspeed != 0) $(13_10){$(13_10)	// Trasforma spd para a velocidade de andar nas direcionais$(13_10)	spd = dagspd;$(13_10)} else $(13_10){$(13_10)	// Se nâo, ande na velocidade normal$(13_10)	spd = bspd;$(13_10)}$(13_10)$(13_10)//Dash$(13_10)$(13_10)if( hspd != 0 || vspd != 0 ) // Cheque se a gente esta se movendo, entao$(13_10){ $(13_10)	if ( canDash && dash && dashingSteps <= 0) //Checa se a gente pode dar dash, apertou o botao de dash, e se agente nao esta num dash$(13_10)	{ $(13_10)		dashingSteps = dashMaxDuration; // Entao adicione alguns steps de dash$(13_10)	}$(13_10)}$(13_10)// Se a gente está no dash...$(13_10)if( dashingSteps > 0 ) $(13_10){$(13_10)	//Adicione velocidade$(13_10)	hspd += dashspd * dhspeed;$(13_10)	vspd += dashspd * dvspeed;$(13_10)	canDash = false; //Não pode dar outro dash$(13_10)	coolDash = coolDashMax; //Começa o Timer para dar um dash no ultimo step$(13_10)	dashingSteps--; // Abaixe o tempo de dash até chegar a zero, entao ele ira parar de dar dash$(13_10)}$(13_10)$(13_10)if (!canDash && dashingSteps <= 0) //Se a gente não pode dar dash, e acabou o dash então...$(13_10){ $(13_10)	coolDash--; // abaixe o timer de cooldown....$(13_10)	if (coolDash <= 0) // E qnd o timer chegar a 0, pode dar dash de novo$(13_10)	{ $(13_10)		canDash = true;$(13_10)	}$(13_10)}$(13_10)script_execute(scrCollision);//Checka colissões$(13_10)$(13_10)//Move o player$(13_10)x += hspd;$(13_10)y += vspd;$(13_10)"
	/// @description Execute Code
	script_execute(scrPlayerInput); //Pega os inputs 
	
	//Subtrai o resultado, impossibilitando a possibilidade de dar problema ao teclar
	//duas teclas da mesma direção -> Resulta na direção de movimento
	dhspeed = rightkey - leftkey; //-1 Esquerda : 1 Direita
	dvspeed = downkey - upkey; //-1 cima : 1 baixo
	
	//Atribui a direçâo com spd para resolver quantos pixels e para qual direção o player
	//ira se mover
	hspd = dhspeed*spd;
	vspd = dvspeed*spd;
	
	//se o player esta se movendo para horizontalmente e verticalmente ao mesmo tempo
	if (dhspeed != 0) and (dvspeed != 0) 
	{
		// Trasforma spd para a velocidade de andar nas direcionais
		spd = dagspd;
	} else 
	{
		// Se nâo, ande na velocidade normal
		spd = bspd;
	}
	
	//Dash
	
	if( hspd != 0 || vspd != 0 ) // Cheque se a gente esta se movendo, entao
	{ 
		if ( canDash && dash && dashingSteps <= 0) //Checa se a gente pode dar dash, apertou o botao de dash, e se agente nao esta num dash
		{ 
			dashingSteps = dashMaxDuration; // Entao adicione alguns steps de dash
		}
	}
	// Se a gente está no dash...
	if( dashingSteps > 0 ) 
	{
		//Adicione velocidade
		hspd += dashspd * dhspeed;
		vspd += dashspd * dvspeed;
		canDash = false; //Não pode dar outro dash
		coolDash = coolDashMax; //Começa o Timer para dar um dash no ultimo step
		dashingSteps--; // Abaixe o tempo de dash até chegar a zero, entao ele ira parar de dar dash
	}
	
	if (!canDash && dashingSteps <= 0) //Se a gente não pode dar dash, e acabou o dash então...
	{ 
		coolDash--; // abaixe o timer de cooldown....
		if (coolDash <= 0) // E qnd o timer chegar a 0, pode dar dash de novo
		{ 
			canDash = true;
		}
	}
	script_execute(scrCollision);//Checka colissões
	
	//Move o player
	x += hspd;
	y += vspd;
}